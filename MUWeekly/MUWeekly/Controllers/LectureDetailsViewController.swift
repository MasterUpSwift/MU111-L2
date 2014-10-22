//
//  LectureDetailsViewController.swift
//  MUWeekly
//
//  Created by Igor Tomych on 16/10/14.
//  Copyright (c) 2014 itomych studio. All rights reserved.
//

import UIKit

class LectureDetailsViewController: UIViewController {
    @IBOutlet weak var lectureDetails: UITextView!
    var lecture: Lecture? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let currentLecture = lecture {
            title = currentLecture.name
            lectureDetails.text = currentLecture.details
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func playAction(sender: AnyObject) {
    }
}
