//
//  ViewController.swift
//  Swift_Assignment_01
//
//  Created by Wenjuan Lu (lu000094) on 2016-10-13.
//  Copyright © 2016 Algonquin College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textViewOutput: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textViewOutput.text = "Console text set"
        
        //Instance of schedule
        let schedule = Schedule()
        
        //Print Current event Count, expected is 0
        textViewOutput.text = textViewOutput.text.stringByAppendingString("\n" + String(schedule.eventCount))
        
        //Add events in the schedule
        schedule.addNewEvent("Event1", description: "Tim's Birthday party", dateString: "2016/10/13 19:00")
        schedule.addNewEvent("Event2", description: "John's Birthday party", dateString: "2016/10/18 20:00")
        schedule.addNewEvent("Event3", description: "Doe's Birthday party", dateString: "2016/11/14 21:00")
        schedule.addNewEvent("Event4", description: "Kim's Birthday party", dateString: "2016/12/12 22:00")
        
        //Print Current event count, expected is 4
        textViewOutput.text = textViewOutput.text.stringByAppendingString("\n" + String(schedule.eventCount))
        
        //Print events list.
        textViewOutput.text = textViewOutput.text.stringByAppendingString("\n" + String(schedule.outputAllEvents()))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

