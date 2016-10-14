//
//  Event.swift
//  Swift_Assignment_01
//
//  Created by Wenjuan Lu (lu000094) on 2016-10-13.
//  Copyright © 2016 Algonquin College. All rights reserved.
//

import Foundation

class Event {
    
    var title: String?
    var description: String?
    var date: NSDate?
    
    
    init(title: String, description: String, dateString: String){
        self.title = title
        self.description = description
        setDate(dateString)
    }
    
    func setDate(formatedDateString: String){
         let formatting = NSDateFormatter()
         formatting.dateFormat = "yyyy/MM/dd HH:mm"
         self.date = formatting.dateFromString(formatedDateString)
    }
    
    func getInfo()-> String{
        let eventText = self.title! + ": " + self.description! + " on " + String(self.date!)
        return eventText
    }
    
    
    
}
