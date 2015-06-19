//
//  Profile.swift
//  MariaFrô
//
//  Created by Luisa Carvalho de Mendonça Ronchi on 04/05/15.
//  Copyright (c) 2015 BEPiD. All rights reserved.
//

import UIKit
import MessageUI

class Profile: UIViewController,UIAlertViewDelegate {
    
    
    @IBOutlet weak var background: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        background.image = UIImage(named: "background1")
        background.alpha = 0.0
        
        self.tabBarController?.tabBar.tintColor = UIColor(red: 0.7372, green: 0.4666, blue: 0.6392, alpha: 1)
        // Do any additional setup after loading the view.


    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func createAlert(cel : String, message: String)
    {
        
        var alert = UIAlertController(title: cel, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        
        let callAction = UIAlertAction(title: "Call", style: UIAlertActionStyle.Default, handler: {
            (action) in
            var url: NSURL = NSURL(string: "tel://+\(cel)")!
            UIApplication.sharedApplication().openURL(url)
            
        })
        
        
        let copyCellAction = UIAlertAction(title: "Copy Number", style: UIAlertActionStyle.Default, handler: {
            (action) in
            UIPasteboard.generalPasteboard().string = cel
        })
        
        let cancelCellAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: {
            (action) in
            self.dismissViewControllerAnimated(false, completion: nil)
        })
    
    
    alert.addAction(callAction)
    alert.addAction(copyCellAction)
    alert.addAction(cancelCellAction)
    
    self.presentViewController(alert, animated: true, completion: {
    println("Call function started")
    })
    
    
}

    
    @IBAction func callNumber(sender: AnyObject) {
        
        var cel: String = "+55 21 987262235"
        var tel: String = "5521987262235"
        
        var alert = UIAlertController(title: cel, message: "Talk to Maria Frô", preferredStyle: UIAlertControllerStyle.Alert)
        
        let callAction = UIAlertAction(title: "Call", style: UIAlertActionStyle.Default, handler: {
            (action) in
            var url: NSURL = NSURL(string: "tel://+\(tel)")!
            UIApplication.sharedApplication().openURL(url)
            
        })
        
        let copyCellAction = UIAlertAction(title: "Copy Number", style: UIAlertActionStyle.Default, handler: {
            (action) in
            UIPasteboard.generalPasteboard().string = tel
        })
        
        let cancelCellAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: {
            (action) in
            self.dismissViewControllerAnimated(false, completion: nil)
        })
        
        
        alert.addAction(callAction)
        //alert.addAction(sendSMSAction)
        alert.addAction(copyCellAction)
        alert.addAction(cancelCellAction)
        
        self.presentViewController(alert, animated: true, completion: {
            println("Call function started")
        })
        
    }
    
    func configuredMessageComposeViewController(){
        
        let textMessageRecipients = ["21987262235"]
        let messageComposeVC = MFMessageComposeViewController()
        // messageComposeVC.messageComposeDelegate = self
        messageComposeVC.recipients = textMessageRecipients
        messageComposeVC.body = "Hey friend - Just sending a text message in-app using Swift!"
    
    }


}
