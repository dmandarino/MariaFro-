//
//  WindowViewController.swift
//  MariaFrô
//
//  Created by Luisa Carvalho de Mendonça Ronchi on 30/04/15.
//  Copyright (c) 2015 BEPiD. All rights reserved.
//

import UIKit

class Window: UICollectionViewController {

   
    let pictures = [UIImage(named: "Crown1"), UIImage(named: "Crown1"), UIImage(named: "Crown1"), UIImage(named: "Crown1"), UIImage(named: "Crown1"), UIImage(named: "Crown1"), UIImage(named: "Crown1"), UIImage(named: "Crown1"), UIImage(named: "Crown1"), UIImage(named: "Crown1"), UIImage(named: "Crown1"), UIImage(named: "Crown1"), UIImage(named: "Crown1"), UIImage(named: "Crown1")]
    
    let pictureInfo = ["R$45", "R$50", "R$55", "R$60", "R$65", "R$65", "R$65", "R$65", "R$65", "R$65", "R$65", "R$65", "R$65", "R$65"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let picture = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! WindowCell
        
        var name:String = "Crown\(indexPath.row + 1)"
        var imageForCell:UIImage = UIImage(named: name)!
        
        picture.crownPicture.image = imageForCell

        
        picture.crownInfo.text = pictureInfo[indexPath.item]
        
        let row = indexPath.item
        
        return picture
    
    }
    
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        
       return pictures.count
    }
    
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        
        return 1
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
