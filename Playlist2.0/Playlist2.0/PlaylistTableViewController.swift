//
//  PlaylistTableViewController.swift
//  Playlist2.0
//
//  Created by Eva Marie Bresciano on 5/18/16.
//  Copyright © 2016 Module 8.2. All rights reserved.
//

import UIKit

class PlaylistTableViewController: UITableViewController {
    
    
    // MARK: - Outlets
    
    @IBOutlet weak var playlistTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
    }
    

    
    // MARK: - Actions
    
    @IBAction func addButtonTapped(sender: AnyObject) {
        guard let playlist = playlistTextField.text where playlist.characters.count > 0 else {
            return
        }
        PlaylistController.sharedInstance.addPlaylist(playlist)
        playlistTextField.text = ""
        tableView.reloadData()
        
        
    }
    
    
    
    // MARK: - Table view data source
    
    
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PlaylistController.sharedInstance.playlists.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("playlistCell", forIndexPath: indexPath)
        let playlist = PlaylistController.sharedInstance.playlists[indexPath.row]
        cell.textLabel?.text = playlist.name
        cell.detailTextLabel?.text = "\(playlist.songs.count) Songs"
        // Configure the cell...
        
        return cell
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            let playlist = PlaylistController.sharedInstance.playlists[indexPath.row]
            PlaylistController.sharedInstance.deletePLaylist(playlist)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }

/*
 // Override to support rearranging the table view.
 override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
 
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
 // Return false if you do not want the item to be re-orderable.
 return true
 }
 */


 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "toSongDetail" {
        let songVC = segue.destinationViewController as? SongViewController
        if let indexPath = tableView.indexPathForSelectedRow {
            let playlist = PlaylistController.sharedInstance.playlists[indexPath.row]
             songVC?.playlist = playlist
        }
    }
    
    
    
 // Get the new view controller using segue.destinationViewController.
 // Pass the selected object to the new view controller.
 }
 
}

