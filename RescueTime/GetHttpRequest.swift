//
//  GetHttpRequest.swift
//  RescueTime
//
//  Created by Shalini Kurian on 5/14/16.
//  Copyright © 2016 Shalini Kurian. All rights reserved.
//

import UIKit
import ObjectMapper

typealias GetHttpRequestCompletionBlock = (model : Mappable) -> Void

class GetHttpRequest:HttpRequest  {
    internal var queryParameters : [(String, String)]
    init(url: NSURL?, queryParameters: [(String, String)]) {
        self.queryParameters = queryParameters
        if let urlVal = url {
            let urlWithQueryParameters = NSMutableString(string: urlVal.absoluteString)
            for (index, queryItem) in self.queryParameters.enumerate() {
                let set = NSCharacterSet.URLQueryAllowedCharacterSet()
                let escapedQueryKey = queryItem.0.stringByAddingPercentEncodingWithAllowedCharacters(set)
                let escapedQueryValue = queryItem.1.stringByAddingPercentEncodingWithAllowedCharacters(set)
                var queryPair : String
                    
                if (index == 0) {
                    queryPair = "?\(escapedQueryKey!)=\(escapedQueryValue!)"
                }
                else {
                    queryPair = "&\(escapedQueryKey!)=\(escapedQueryValue!)"
                }
                
                urlWithQueryParameters.appendString(queryPair)
            }
            
            let urlObject = NSURL(string: urlWithQueryParameters as String)
            super.init(url: urlObject)
            return
        }
        super.init(url: url)
    }
}

class GetModelHttpRequest<Type where Type:Mappable>:GetHttpRequest
{
    override init(url: NSURL?, queryParameters: [(String, String)]) {
        super.init(url: url, queryParameters: queryParameters)
    }
    
    func makeGetRequestWithCompletionBlock(completionBlock: GetHttpRequestCompletionBlock, failureBlock: HttpRequestFailureBlock){
        super.makeRequestWithCompletionBlock({ (responseData) in
            let optionalJsonString = String(data: responseData, encoding: NSUTF8StringEncoding)
            if let jsonString = optionalJsonString {
                print(jsonString)
                let optionalModel = Mapper<Type>().map(jsonString)
                print(optionalModel)
                if let model = optionalModel {
                    completionBlock(model: model)
                } else
                {
                    print("makeRequestWithCompletionBlock: optionalModel was nil")
                }
            } else {
                print("makeRequestWithCompletionBlock: optionalJsonString was not string")
            }
            }, failureBlock: failureBlock)
    }
}

class GetCollectionHttpRequest<Type where Type:Mappable>:GetHttpRequest
{
    override init(url: NSURL?, queryParameters: [(String, String)]) {
        super.init(url: url, queryParameters: queryParameters)
    }
    
    func makeGetCollectionRequestWithCompletionBlock(completionBlock: (collection : CollectionObject<Type>) -> Void, failureBlock:HttpRequestFailureBlock) {
        super.makeRequestWithCompletionBlock({ (responseData) in
            let optionalJsonString = String(data: responseData, encoding: NSUTF8StringEncoding)
            let model = CollectionObject<Type>(jsonString: optionalJsonString)
            completionBlock(collection:model)
            }, failureBlock: failureBlock)
    }
}
