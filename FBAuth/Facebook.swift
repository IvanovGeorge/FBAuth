//
//  Facebook.swift
//  FBAuth
//
//  Created by Георгий Иванов on 14.05.17.
//  Copyright © 2017 George Ivanov. All rights reserved.
//

import Foundation
import FBSDKLoginKit

public class Facebook {
    /*
     Get facebook access token by opening a login window.
     
     - parameter callback:      Returns AccessToken as String or an Error.
     */
    //token variable for testing
    var token: String?
    static let sharedInstance = Facebook()
    
    public func getAuthToken(from: UIViewController, callback: @escaping (String?, Error?) -> Void) {
        //initing FbLoginManager
        let loginManager : FBSDKLoginManager = FBSDKLoginManager()
        //opening login window
        loginManager.logIn(withReadPermissions: ["public_profile","email"], from: from) { (result, error) in
            if (error == nil){
                //if no errors, return token
                self.token = FBSDKAccessToken.current().tokenString
                callback(self.token, nil)
            } else {
                //if error, return error
                callback(nil, error)
            }
        }
    }
    
    
}
