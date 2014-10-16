//
//  ViewController.swift
//  MUWeekly
//
//  Created by Igor Tomych on 09/10/14.
//  Copyright (c) 2014 itomych studio. All rights reserved.
//

import UIKit

class LecturesViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //if user.loggedIn != true {
        //показываем авторизацию
        
        let navAuthentication: UINavigationController = UIStoryboard(name: "Authentication", bundle: nil).instantiateInitialViewController() as UINavigationController
        
        navigationController?.presentViewController(navAuthentication, animated: true, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

