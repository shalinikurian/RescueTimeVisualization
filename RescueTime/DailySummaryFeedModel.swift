//
//  DailySummaryFeed.swift
//  RescueTime
//
//  Created by Shalini Kurian on 5/14/16.
//  Copyright © 2016 Shalini Kurian. All rights reserved.
//

import UIKit
import ObjectMapper

class DailySummaryFeedModel: Mappable {
    var dailySummaryList : [DailySummary]
    
    required init?(_ map: Map) {
        self.dailySummaryList = []
    }
    
    func mapping(map: Map) {
     dailySummaryList <- map["daily_summary"]
    }
}
