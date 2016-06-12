//
//  HttpRequest.swift
//  RescueTime
//
//  Created by Shalini Kurian on 5/14/16.
//  Copyright © 2016 Shalini Kurian. All rights reserved.
//

import UIKit

typealias HttpRequestCompletionBlock = (responseData : NSData) -> Void
typealias HttpRequestFailureBlock = (error : NSError) -> Void

class HttpRequest: NSObject {
    internal var url : NSURL?;
    init (url: NSURL?) {
        self.url = url
        super.init()
    }
    
    func makeRequestWithCompletionBlock(completionBlock: HttpRequestCompletionBlock, failureBlock: HttpRequestFailureBlock) {
        let sharedSession = NSURLSession.sharedSession()
        if (self.url == nil) {
            return
        }
        
        let httpTask = sharedSession.dataTaskWithURL(self.url!, completionHandler:{(data: NSData?,response: NSURLResponse?, error: NSError?) in
            if (error != nil) {
                failureBlock(error: error!)
                return
            }
            completionBlock(responseData: data!)
        })
        
        httpTask.resume()
    }
}
