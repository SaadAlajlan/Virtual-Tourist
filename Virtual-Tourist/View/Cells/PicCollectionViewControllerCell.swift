//
//  PicCollectionViewControllerCell.swift
//  Virtual-Tourist
//
//  Created by Saad on 12/6/19.
//  Copyright © 2019 saad. All rights reserved.
//

import UIKit
import Kingfisher

class PicCollectionViewControllerCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    var taskToCancelifCellIsReused: URLSessionTask? {
        
        didSet {
            if let taskToCancel = oldValue {
                taskToCancel.cancel()
            }
            
        }
    }
}
