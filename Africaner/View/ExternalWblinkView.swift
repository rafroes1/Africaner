//
//  ExternalWblinkView.swift
//  Africaner
//
//  Created by Rafael Carvalho on 08/02/23.
//

import SwiftUI

struct ExternalWblinkView: View {
    let animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
            }//:HSTACK
        }//:GROUPBOX
    }
}

struct ExternalWblinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWblinkView(animal: animals[0])
    }
}
