//
//  PinterestVC.swift
//  MariaFrô
//
//  Created by Luisa Carvalho de Mendonça Ronchi on 15/06/15.
//  Copyright (c) 2015 BEPiD. All rights reserved.
//

import UIKit

class PinterestVC: UIViewController {

    @IBOutlet var pinterestView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "http://pinterest.com/mariafrobrazil")
        let request = NSURLRequest(URL: url!)
        pinterestView.loadRequest(request)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
