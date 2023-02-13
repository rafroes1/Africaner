//
//  CenterModifier.swift
//  Africaner
//
//  Created by Rafael Carvalho on 13/02/23.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
