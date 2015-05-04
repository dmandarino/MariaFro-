//
//  UITableViewCell.swift
//  CollectionViewTableView
//
//  Created by Douglas Mandarino on 5/4/15.
//  Copyright (c) 2015 Douglas Mandarino. All rights reserved.
//

import Foundation
import UIKit

class SectionCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate,  UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        println("coder")

    }
    
    let pictureInfo = ["#001", "#002", "#003", "#004", "#005", "#006", "#007", "#008", "#009", "#65", "#010", "#011", "#012", "#013"]
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pictureInfo.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let picture = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! WindowCell
        
        
        var name:String = "Crown\(indexPath.row + 1)"
        var imageForCell:UIImage = UIImage(named: name)!
        
        picture.crownPicture.image = imageForCell
        
        picture.crownInfo.text = pictureInfo[indexPath.item]
        
        let row = indexPath.item
        
        return picture
    }

}