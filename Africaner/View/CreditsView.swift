//
//  CreditsView.swift
//  Africaner
//
//  Created by Rafael Carvalho on 13/02/23.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        HStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 64, height: 64)
            
            Text("""
Copyright © Robert Petras
All right reserved
Better Apps Less Code
""")
            .font(.footnote)
            .multilineTextAlignment(.center)
        }
        .padding()
        .opacity(0.4)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
