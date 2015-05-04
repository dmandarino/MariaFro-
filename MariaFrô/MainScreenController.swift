//
//  ViewController.swift
//  CollectionViewTableView
//
//  Created by Douglas Mandarino on 5/4/15.
//  Copyright (c) 2015 Douglas Mandarino. All rights reserved.
//

import UIKit

class MainScreenController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tabBarController?.tabBar.tintColor = UIColor(red: 0.9551, green: 0.8627, blue: 0.8706, alpha: 1)
    }
 
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
//    override func tableView( tableView : UITableView, titleForHeaderInSection section: Int)->String {
//        switch(section) {
//        case 0:
//            return "Crowns"
//        case 1:
//            return "Looks"
//        case 2:
//            return "Inspirations"
//        default :
//            return "Inspirations"
//        }
//        
//    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! SectionCell

        switch indexPath.row {
        case 0:
            cell.prefix = "Crown"
        case 1:
            cell.prefix = "look"
        case 2:
            cell.prefix = "inspiration"
        default:
            cell.prefix = "inspiration"
        }
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}