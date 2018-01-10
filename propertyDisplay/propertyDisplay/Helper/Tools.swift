//
//  Tools.swift
//  propertyDisplay
//
//  Created by Unsan on 10/1/18.
//  Copyright © 2018 Wawa.Tech. All rights reserved.
//

import Foundation
import UIKit

class Tools {
    
    static func checkNetwork(context : AnyObject){
        
        if Reachability.isConnectedToNetwork() == false {
            
            let alertController = UIAlertController(title: "Notification", message: "Net_Error", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default,handler: nil))
            context.present(alertController, animated: true, completion: nil)
        }
        
    }
    
    
}

