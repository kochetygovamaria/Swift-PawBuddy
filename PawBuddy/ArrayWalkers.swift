//
//  ArrayWalkers.swift
//  PawBuddy
//
//  Created by Maria Kochetygova on 12/4/17.
//  Copyright © 2017 Maria Kochetygova. All rights reserved.
//

import UIKit

class ArrayWalkers: NSObject {
    
var arrayWalkers=[WalkersObject]()
    
    override init() {
        super.init()
        populateData()
    }
    func populateData(){
        let url = Bundle.main.url(forResource: "WalkersDefaultData", withExtension: "json")
        let data = NSData(contentsOf: url!)
        do {
            let object = try JSONSerialization.jsonObject(with: data! as Data, options: .allowFragments)
            if let dictionary = object as? [String: AnyObject] {
                readJSONObject(object: dictionary)
            }
        } catch {
            // Handle Error
        }
        
    }
    
    func readJSONObject(object: [String: AnyObject]) {
        
        var users = object["Walkers"] as? [[String: AnyObject]]
        
        
        
        for user in users! {
            var firstName1 = user["firstName"] as? String
            var lastName1 = user["lastName"] as? String
            var service1=user["service"] as? String
            var about1 = user["about"] as? String
            var id1 = user["id"] as? String
            var phone1 = user["phone"] as? Int
            var price1 = user["price"] as? Int
            var zipCode1=user["zipCode"] as? Int
            var photo=user["photo"] as? Int
            arrayWalkers.append(WalkersObject(firstName:firstName1!, lastName:lastName1!,service:service1!,price:price1!,about:about1!,id:id1!, phone:phone1!,photo:UIImage(named:"personService.jpg")!,zipCode:zipCode1!))
            
        }
    }
    
}
