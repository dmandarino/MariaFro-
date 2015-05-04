//
//  Profile.swift
//  MariaFrô
//
//  Created by Luisa Carvalho de Mendonça Ronchi on 04/05/15.
//  Copyright (c) 2015 BEPiD. All rights reserved.
//

import UIKit

class Profile: UIViewController {
    
    
    @IBOutlet weak var background: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        background.image = UIImage(named: "background1")
        background.alpha = 0.2
        
        self.tabBarController?.tabBar.tintColor = UIColor(red: 0.9551, green: 0.8627, blue: 0.8706, alpha: 1)
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
