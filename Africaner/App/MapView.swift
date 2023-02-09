//
//  MapView.swift
//  Africaner
//
//  Created by Rafael Carvalho on 07/02/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    var body: some View {
        //BASIC MAP
        //Map(coordinateRegion: $region)
        
        //ADVANCED MAP
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: {
            item in
            //option A: PIN (deprecated) - static
            //MapPin(coordinate: item.location, tint: .accentColor)
            
            //option B: MARKER (new)- static
            //MapMarker(coordinate: item.location, tint: .accentColor)
            
            //option C: CUSTOM BASIC ANNOTATION - dynamic
            //MapAnnotation(coordinate: item.location) {
                //Image("logo")
                    //.resizable()
                    //.scaledToFit()
                    //.frame(width: 32, height: 32, alignment: .center)
            //}
            
            //option D: CUSTOM COMPLEX ANNOTATION - dynamic
            MapAnnotation(coordinate: item.location) {
                MapAnnotaionView(location: item)
            }
        })//:MAP
        .overlay (
            HStack(alignment: .center, spacing: 12) {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                
                VStack(alignment: .leading, spacing: 3){
                    HStack {
                        Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                    
                    Divider()
                    
                    HStack {
                        Text("Longitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                }
            }//:HSTACK
                .padding(.vertical, 12)
                .padding(.horizontal, 16)
                .background(
                    Color.black
                        .cornerRadius(8)
                        .opacity(0.6)
                )
                .padding()
                , alignment: .top
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
