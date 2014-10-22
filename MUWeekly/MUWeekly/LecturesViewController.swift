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
        
        MBProgressHUD.showHUDAddedTo(view, animated: true)
        
        MUApi.sharedInstance().getLectures { (lectures) -> () in

            MBProgressHUD.hideAllHUDsForView(self.view, animated: true)
            
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
        
        var cell = tableView.dequeueReusableCellWithIdentifier("lectureCell", forIndexPath: indexPath) as TestTableCell
        
        var lecture = lecturesList[indexPath.row]
        cell.textLabel?.text = lecture.name

        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "lectureDetails" {
           let detailsViewController = segue.destinationViewController as LectureDetailsViewController

            
            let indexPath = self.tableView.indexPathForCell(sender as TestTableCell)!
            
            let lecture = lecturesList[indexPath.row]
            
            detailsViewController.lecture = lecture
        }
    }
}

