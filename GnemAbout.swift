//
//  GnemAbout.swift
//  Visited when the user pressed What is gnem-dmp on the ultragenyx home screen
//
//  Created by Austin Vershel on 6/28/16.
//  Copyright © 2016 Austin Vershel. All rights reserved.
//

import UIKit
import ResearchKit
class GnemAbout: UIViewController{
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func back(sender: AnyObject) {
        performSegueWithIdentifier("abouttognem", sender: nil)
        
    }
}
