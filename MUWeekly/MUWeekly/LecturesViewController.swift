//
//  ViewController.swift
//  MUWeekly
//
//  Created by Igor Tomych on 09/10/14.
//  Copyright (c) 2014 itomych studio. All rights reserved.
//

import UIKit

class LecturesViewController: UITableViewController {
    var lecturesList: [Lecture] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MUApi.sharedInstance().getLectures { (lectures) -> () in

            self.lecturesList = lectures
            self.tableView.reloadData()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lecturesList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("lectureCell", forIndexPath: indexPath) as UITableViewCell
        
        
        var lecture = lecturesList[indexPath.row]
        cell.textLabel?.text = lecture.name
        
        
        
        return cell
    }
    
    
}

