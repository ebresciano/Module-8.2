//
//  Playlist.swift
//  Playlist2.0
//
//  Created by Eva Marie Bresciano on 5/18/16.
//  Copyright © 2016 Module 8.2. All rights reserved.
//

import Foundation

class Playlist: Equatable {
    let name: String
    var songs: [Song]
    
    init(name: String, songs: [Song] = []) {
        self.name = name
        self.songs = songs
    }
    
}


func == (lhs: Playlist, rhs: Playlist) -> Bool {
   return lhs.name == rhs.name && lhs.songs == rhs.songs
}