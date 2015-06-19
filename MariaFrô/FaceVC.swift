//
//  FaceVC.swift
//  MariaFrô
//
//  Created by Luisa Carvalho de Mendonça Ronchi on 15/06/15.
//  Copyright (c) 2015 BEPiD. All rights reserved.
//

import UIKit

class FaceVC: UIViewController {

    @IBOutlet var faceView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = NSURL(string: "http://facebook.com/mariafro.coroadeflores")
        let request = NSURLRequest(URL: url!)
        faceView.loadRequest(request)
        
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
