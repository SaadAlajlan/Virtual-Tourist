//
//  Photo+CoreDataProperties.swift
//  Virtual-Tourist
//
//  Created by Saad on 12/6/19.
//  Copyright © 2019 saad. All rights reserved.
//

import Foundation
import CoreData


extension Photo {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Photo> {
        return NSFetchRequest<Photo>(entityName: "Photo");
    }
    @NSManaged public var imageURL: String?
    @NSManaged public var nsData: NSData?
    @NSManaged public var pin: Pin?
    
}

