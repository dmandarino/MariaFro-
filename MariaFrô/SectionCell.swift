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
    
    var prefix:String?
    
    @IBOutlet weak var collectionView: UICollectionView!

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        println("coder")

    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 14
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let picture = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! WindowCell
        
        
        var name:String = prefix! + "\(indexPath.row + 1)"
        var imageForCell:UIImage = UIImage(named: name)!
        
        picture.crownPicture.image = imageForCell
        
        let row = indexPath.item
        
        return picture
    }

}