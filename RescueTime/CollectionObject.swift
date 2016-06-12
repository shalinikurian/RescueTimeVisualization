//
//  CollectionObject.swift
//  RescueTime
//
//  Created by Shalini Kurian on 6/11/16.
//  Copyright © 2016 Shalini Kurian. All rights reserved.
//

import UIKit
import ObjectMapper

class CollectionObject <Type where Type:Mappable> : NSObject {
    var collectionArray : [Type]
    required init(jsonString: String?) {
        if let collectionArray = Mapper<Type>().mapArray(jsonString){
            self.collectionArray = collectionArray
        }
        else {
            self.collectionArray = []
            print("CollectionModel init: could not unwrap collectionArray")
        }
        super.init()
    }
}

