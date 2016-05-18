//
//  PlaylistController.swift
//  Playlist2.0
//
//  Created by Eva Marie Bresciano on 5/18/16.
//  Copyright © 2016 Module 8.2. All rights reserved.
//

import Foundation

class PlaylistController {
    
    var playlists: [Playlist] = []
    
    static let sharedInstance = PlaylistController()
    
    // CRUD 
    
    func addPlaylist(name: String) {
        let playlist = Playlist(name: name)
        playlists.append(playlist)
    }
    
    func deletePLaylist(playlist: Playlist) {
        if let index = playlists.indexOf(playlist) {
            playlists.removeAtIndex(index)
        }
        
    }

    func addSongToPLaylist(song: Song, playlist: Playlist) {
        playlist.songs.append(song)
        
    }
    
    func deleteSongFromPlaylist(song: Song, playlist: Playlist){
        if let index = playlist.songs.indexOf(song) {
            playlist.songs.removeAtIndex(index)
        }
    }
}



