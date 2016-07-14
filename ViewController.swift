//
//  ViewController.swift
//  nof1
//
//  Created by Austin Vershel on 6/28/16.
//  Copyright © 2016 Austin Vershel. All rights reserved.
//

import UIKit
import ResearchKit
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    @IBOutlet var tableView: UITableView!
    
    let swiftBlogs = ["International GNE Myopathy Registry", "Diabetes Survey", "Genome Testing", "Parkinsons Survey", "Epilepsy Survey", "Disphaysia/Aphaysia Survey", "TBI Survey", "Influenza Survey", "Autism Survey"]
    var selectedstudy = "default"
    var rowpicked = 100;
    
    let textCellIdentifier = "TextCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return swiftBlogs.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(textCellIdentifier, forIndexPath: indexPath)
        
        let row = indexPath.row
        cell.textLabel?.text = swiftBlogs[row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You selected cell #\(indexPath.row)!")
        selectedstudy = swiftBlogs[indexPath.row];
        rowpicked = indexPath.row;
        if rowpicked == 0 {
            performSegueWithIdentifier("gnem", sender: nil)
        
        
    }


}
}
