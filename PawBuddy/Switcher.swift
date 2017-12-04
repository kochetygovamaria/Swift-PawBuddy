//
//  Switcher.swift
//  PawBuddy
//
//  Created by Maria Kochetygova on 11/29/17.
//  Copyright © 2017 Maria Kochetygova. All rights reserved.
//

import UIKit

class Switcher {

    static func updateRootVC(){
        
        var status = UserDefaults.standard.bool(forKey: "isUserLogin")
        var rootVC : UIViewController?

        
        print(status)
        
        
        if(status == true){
            rootVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "tabVC") as! TabBarVC
        }else{
            rootVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "loginPage") as! ViewController
        }
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = rootVC
        
}

}
