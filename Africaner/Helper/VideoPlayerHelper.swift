//
//  VideoPlayerHelper.swift
//  Africaner
//
//  Created by Rafael Carvalho on 09/02/23.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName: String, format: String) -> AVPlayer {
    if Bundle.main.url(forResource: fileName, withExtension: format) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: format)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
