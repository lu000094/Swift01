//
//  Schedule.swift
//  Swift_Assignment_01
//
//  Created by Wenjuan Lu (lu000094) on 2016-10-13.
//  Copyright © 2016 Algonquin College. All rights reserved.
//

import Foundation

class Schedule {
    var eventArray : [Event] = []
 
    var eventCount : Int {
        get {
            guard !eventArray.isEmpty else{
                return 0
            }
            return eventArray.count
        }
    }
    func addNewEvent(title: String, description: String, dateString: String)  {
        let event = Event(title: title, description: description, dateString: dateString)
        self.eventArray.append(event)
    }
    
    func outputAllEvents() -> String {
        guard !eventArray.isEmpty else{
            return "No Events found!"
        }
        
        var eventListText: String = ""
        for event in eventArray{
            eventListText += event.getInfo() + "\n"
        }
        return eventListText
    }
}
