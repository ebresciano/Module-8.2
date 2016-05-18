//
//  SongController.swift
//  Playlist2.0
//
//  Created by Eva Marie Bresciano on 5/18/16.
//  Copyright © 2016 Module 8.2. All rights reserved.
//

import Foundation


class SongController {
    
    //CRUD
    
   static func createSong(title: String, artist: String, playlist: Playlist) {
        let song = Song(title: title, artist: artist)
        PlaylistController.sharedInstance.addSongToPLaylist(song, playlist: playlist)
    }
}