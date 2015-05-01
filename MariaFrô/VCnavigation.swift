//
//  VCnavigationViewController.swift
//  MariaFrô
//
//  Created by Luisa Carvalho de Mendonça Ronchi on 30/04/15.
//  Copyright (c) 2015 BEPiD. All rights reserved.
//

import UIKit

class VCnavigation: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName:UIColor.whiteColor(), NSFontAttributeName: UIFont(name: "Quicksand-LightItalic", size: 30)!]

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
