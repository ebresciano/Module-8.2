//
//  EntryController.swift
//  Journal again
//
//  Created by Eva Marie Bresciano on 5/18/16.
//  Copyright © 2016 Module 8.2. All rights reserved.
//

import Foundation

class EntryController {
    
    static let sharedInstance = EntryController()
    
    
    var entries = [Entry]()
    
    
    func addEntry(entry: Entry) {
        entries.append(entry)
        
    }
    
    func removeEntry(entry: Entry) {
        if let indexOfEntry = entries.indexOf(entry) {
            entries.removeAtIndex(indexOfEntry)
            
        }
        
        
    }
    
    
}