//
//  DailySummary.swift
//  RescueTime
//
//  Created by Shalini Kurian on 6/11/16.
//  Copyright © 2016 Shalini Kurian. All rights reserved.
//

import UIKit
import ObjectMapper

class DailySummary: Mappable {
    var id : Int = 0
    var date : NSDate?
    var productivityPulse : float_t = 0
    var veryProductivePercentage : float_t = 0
    var productivePercentage : float_t = 0
    var neutralPercentage : float_t = 0
    var distractingPercentage : float_t = 0
    var veryDistractingPercentage : float_t = 0
    var allProductivePercentage : float_t = 0
    var allDistractingPercentage : float_t = 0
    var uncategorizedPercentage : float_t = 0
    var businessPercentage : float_t = 0
    var communicationAndSchedulingPercentage : float_t = 0
    var socialNetworkingPercentage : float_t = 0
    var designAndCompositionPercentage : float_t = 0
    var entertainmentPercentage : float_t = 0
    var newsPercentage : float_t = 0
    var softwareDevelopmentPercentage : float_t = 0
    var referenceAndLearningPercentage : float_t = 0
    var shoppingPercentage : float_t = 0
    var uitilitiesPercentage : float_t = 0
    var totalHours : float_t = 0
    var veryProductiveHours : float_t = 0
    var productiveHours : float_t = 0
    var neutralHours : float_t = 0
    var distractingHours : float_t = 0
    var veryDistractingHours : float_t = 0
    var allProductiveHours : float_t = 0
    var allDistractingHours : float_t = 0
    var uncategorizedHours : float_t = 0
    var businessHours : float_t = 0
    var communicationAndSchedulingHours : float_t = 0
    var socialNetworkingHours : float_t = 0
    var designAndCompositionHours : float_t = 0
    var entertainmentHours : float_t = 0
    var newsHours : float_t = 0
    var softwareDevelopmentHours : float_t = 0
    var referenceAndLearningHours : float_t = 0
    var shoppingHours : float_t = 0
    var utilitiesHours : float_t = 0
    var totalDurationFormatted : float_t = 0
    var veryProductiveDurationFormatted : String = ""
    var productiveDurationFormatted : String = ""
    var neutralDurationFormatted : String = ""
    var distractingDurationFormatted : String = ""
    var veryDistractingDurationFormatted : String = ""
    var allProductiveDurationFormatted : String = ""
    var allDistractingDurationFormatted : String = ""
    var uncategorizedDurationFormatted : String = ""
    var businessDurationFormatted : String = ""
    var communicationAndSchedulingDurationFormatted : String = ""
    var socialNetworkingDurationFormatted : String = ""
    var designAndCompositionDurationFormatted : String = ""
    var entertainmentDurationFormatted : String = ""
    var newsDurationFormatted : String = ""
    var softwareDevelopmentDurationFormatted : String = ""
    var referenceAndLearningDurationFormatted : String = ""
    var shoppingDurationFormatted : String = ""
    var utilitiesDurationFormatted : String = ""
    
    required init?(_ map: Map) {
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        productivityPulse <- map["productivity_pulse"]
        veryProductivePercentage <- map["very_productive_percentage"]
        productivePercentage <- map["productive_percentage"]
        neutralPercentage <- map["neutral_percentage"]
        distractingPercentage <- map["distracting_percentage"]
        veryDistractingPercentage <- map["very_distracting_percentage"]
        allProductivePercentage <- map["all_productive_percentage"]
        allDistractingPercentage <- map["all_distracting_percentage"]
        uncategorizedPercentage <- map["uncategorized_percentage"]
        businessPercentage <- map["business_percentage"]
        communicationAndSchedulingPercentage <- map["communication_and_scheduling_percentage"]
        socialNetworkingPercentage <- map["social_networking_percentage"]
        designAndCompositionPercentage <- map["design_and_composition_percentage"]
        entertainmentPercentage <- map["entertainment_percentage"]
        newsPercentage <- map["news_percentage"]
        softwareDevelopmentPercentage <- map["software_development_percentage"]
        referenceAndLearningPercentage <- map["reference_and_learning_percentage"]
        shoppingPercentage <- map["shopping_percentage"]
        uitilitiesPercentage <- map["utilities_percentage"]
        totalHours <- map["total_hours"]
        veryProductiveHours <- map["very_productive_hours"]
        productiveHours <- map["productive_hours"]
        neutralHours <- map["neutral_hours"]
        distractingHours <- map["distracting_hours"]
        veryDistractingHours <- map["very_distracting_hours"]
        allProductiveHours <- map["all_productive_hours"]
        allDistractingHours <- map["all_distracting_hours"]
        uncategorizedHours <- map["uncategorized_hours"]
        businessHours <- map["business_hours"]
        communicationAndSchedulingHours <- map["communication_and_scheduling_hours"]
        socialNetworkingHours <- map["social_networking_hours"]
        designAndCompositionHours <- map["design_and_composition_hours"]
        entertainmentHours <- map["entertainment_hours"]
        newsHours <- map["news_hours"]
        softwareDevelopmentHours <- map["software_development_hours"]
        referenceAndLearningHours <- map["reference_and_learning_hours"]
        shoppingHours <- map["shopping_hours"]
        utilitiesHours <- map["utilities_hours"]
        totalDurationFormatted <- map["total_duration_formatted"]
        veryProductiveDurationFormatted <- map["very_productive_duration_formatted"]
        productiveDurationFormatted <- map["productive_duration_formatted"]
        neutralDurationFormatted <- map["neutral_duration_formatted"]
        distractingDurationFormatted <- map["distracting_duration_formatted"]
        veryDistractingDurationFormatted <- map["very_distracting_duration_formatted"]
        allProductiveDurationFormatted <- map["all_productive_duration_formatted"]
        allDistractingDurationFormatted <- map["all_distracting_duration_formatted"]
        uncategorizedDurationFormatted <- map["uncategorized_duration_formatted"]
        businessDurationFormatted <- map["business_duration_formatted"]
        communicationAndSchedulingDurationFormatted <- map["communication_and_scheduling_duration_formatted"]
        socialNetworkingDurationFormatted <- map["social_networking_duration_formatted"]
        designAndCompositionDurationFormatted <- map["design_and_composition_duration_formatted"]
        entertainmentDurationFormatted <- map["entertainment_duration_formatted"]
        newsDurationFormatted <- map["news_duration_formatted"]
        softwareDevelopmentDurationFormatted <- map["software_development_duration_formatted"]
        referenceAndLearningDurationFormatted <- map["reference_and_learning_duration_formatted"]
        shoppingDurationFormatted <- map["shopping_duration_formatted"]
        utilitiesDurationFormatted <- map["utilities_duration_formatted"]
    }
}
