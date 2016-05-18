//
//  Song.swift
//  Playlist2.0
//
//  Created by Eva Marie Bresciano on 5/18/16.
//  Copyright © 2016 Module 8.2. All rights reserved.
//

import Foundation

class Song: Equatable {
    
    let title: String
    let artist: String
    
    init(title: String, artist: String) {
    self.title = title
    self.artist = artist

    }
}

func == (lhs: Song, rhs: Song) -> Bool {
    return lhs.title == rhs.title && lhs.artist == rhs.artist
}