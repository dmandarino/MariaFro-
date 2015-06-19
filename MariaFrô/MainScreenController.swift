//
//  ViewController.swift
//  CollectionViewTableView
//
//  Created by Douglas Mandarino on 5/4/15.
//  Copyright (c) 2015 Douglas Mandarino. All rights reserved.
//

import UIKit

class MainScreenController: UITableViewController {
    
    var header = ["Crowns", "Style", "Inspiration"]
        

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tabBarController?.tabBar.tintColor = UIColor(red: 0.7372, green: 0.4666, blue: 0.6392, alpha: 1)
        
//(red: 0.9551, green: 0.8627, blue: 0.8706, alpha: 1)
    }
 
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
//    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        
//        let  Cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! SectionCell
//        Cell.backgroundColor = UIColor.cyanColor()
//        
//        switch (section) {
//            
//        case 0:
//            Cell.HeaderLabel.text = "Crowns"
//        case 1:
//            Cell.HeaderLabel.text = "Style"
//        default :
//            Cell.HeaderLabel.text = "Inspirations"
//        
//        }
//    
//        return Cell
//    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! SectionCell
         
        cell.labelTable.text = header[indexPath.row]
        cell.labelTable.font = UIFont (name: "Quicksand-Italic", size: 20)

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
    
    
   override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
        let openImageVC = segue.destinationViewController as! OpenImageVC
        let position = sender as! WindowCell
        openImageVC.image = position.crownPicture.image
    
    
        //segue.identifier == "toHow"
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}