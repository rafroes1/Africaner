//
//  VideoModel.swift
//  Africaner
//
//  Created by Rafael Carvalho on 09/02/23.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    //computed property
    var thumbnail: String {
        "video-\(id)"
    }
}
