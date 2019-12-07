//
//  Pin.swift
//  Virtual-Tourist
//
//  Created by Saad on 12/6/19.
//  Copyright © 2019 saad. All rights reserved.
//

import Foundation
import CoreData


public class Pin: NSManagedObject {
    
    convenience init(lat: Double, long: Double,  context: NSManagedObjectContext) {
        
        if let ent = NSEntityDescription.entity(forEntityName: "Pin", in: context) {
            self.init(entity: ent, insertInto: context)
            self.lat = lat
            self.long = long
            
        } else {
            fatalError("Unable to find Entity name!")
        }
    }
    
    
    
}
