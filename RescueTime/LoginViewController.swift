//
//  LoginViewController.swift
//  RescueTime
//
//  Created by Shalini Kurian on 5/14/16.
//  Copyright © 2016 Shalini Kurian. All rights reserved.
//

import UIKit
import ObjectMapper

class LoginViewController: UIViewController {
    @IBOutlet weak var apiKeyTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func submitButtonTapped(sender: AnyObject) {
        if let apiKey = apiKeyTextField.text {
            print("api key is \(apiKey)")
            let url = NSURL(string: "https://www.rescuetime.com/anapi/daily_summary_feed")
      
            let getRequest = GetCollectionHttpRequest<DailySummary>(url: url, queryParameters: [("key", apiKey), ("format", "json")])
            let failureBlock:HttpRequestFailureBlock = {(error: NSError)->Void in
            }
            
            getRequest.makeGetCollectionRequestWithCompletionBlock({ (collection) in
                print(collection.collectionArray[0].productivityPulse)
                }, failureBlock: failureBlock);
        }
        else {
            print("no api key entered")
        }
    }
}

