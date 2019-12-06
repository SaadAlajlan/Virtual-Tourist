//
//  Photo.swift
//  Virtual-Tourist
//
//  Created by Saad on 12/6/19.
//  Copyright © 2019 saad. All rights reserved.
//

import Foundation
import CoreData


public class Photo: NSManagedObject {
    
    
    convenience init(image: NSData?, imageURL: String?, context: NSManagedObjectContext) {
        
      
        if let ent = NSEntityDescription.entity(forEntityName: "Photo", in: context) {
            self.init(entity: ent, insertInto: context)
            self.nsData = image
            self.imageURL = imageURL
        } else {
            fatalError("Unable to find Entity name!")
        }
    }
    

}
