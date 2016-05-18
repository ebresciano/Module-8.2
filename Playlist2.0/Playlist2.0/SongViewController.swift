//
//  SongViewController.swift
//  Playlist2.0
//
//  Created by Eva Marie Bresciano on 5/18/16.
//  Copyright © 2016 Module 8.2. All rights reserved.
//

import UIKit

class SongViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // MARK: - Outlets
    
    @IBOutlet weak var songTextField: UITextField!
    
    @IBOutlet weak var artistTextField: UITextField!
    
    @IBOutlet weak var myTableView: UITableView!
    
    var playlist: Playlist?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: - Actions Buttons

    @IBAction func addButtonTapped(sender: AnyObject) {
        guard let playlist = playlist, songName = songTextField.text, artist = artistTextField.text where songName.characters.count > 0 && artist.characters.count > 0 else {
            return
        }
        SongController.createSong(songName, artist: artist, playlist: playlist)
        songTextField.text = ""
        artistTextField.text = ""
        myTableView.reloadData()
    
    }
    
    // MARK: - TableView Data Source Methods
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            guard let playlist = playlist else { return }
            let song = playlist.songs[indexPath.row]
            PlaylistController.sharedInstance.deleteSongFromPlaylist(song, playlist: playlist)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
        
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playlist?.songs.count ?? 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("songCell", forIndexPath: indexPath)
        if let song = playlist?.songs[indexPath.row] {
            cell.textLabel?.text = song.title
            cell.detailTextLabel?.text = song.artist
        }
        
        
        return cell
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
