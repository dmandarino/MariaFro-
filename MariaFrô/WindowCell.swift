//
//  WindowCellCollectionViewCell.swift
//  MariaFrô
//
//  Created by Luisa Carvalho de Mendonça Ronchi on 30/04/15.
//  Copyright (c) 2015 BEPiD. All rights reserved.
//

import UIKit

class WindowCell: UICollectionViewCell {
    
    @IBOutlet weak var crownPicture: UIImageView!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
