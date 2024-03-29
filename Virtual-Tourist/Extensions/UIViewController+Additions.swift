//
//  UIViewController+Additions.swift
//  Virtual-Tourist
//
//  Created by Saad on 12/6/19.
//  Copyright © 2019 saad. All rights reserved.
//

import Foundation
import UIKit
import CoreData


extension UIViewController{
    func actionAlert(topic: String? = nil, message: String? = nil, complition: @escaping(UIAlertAction) -> Void){
        let alert = UIAlertController(title: topic, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: complition))
        self.present(alert, animated: true, completion: nil)
    }
    
    func popupAlert(topic: String? = nil, message: String? = nil){
        let alert = UIAlertController(title: topic, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}

