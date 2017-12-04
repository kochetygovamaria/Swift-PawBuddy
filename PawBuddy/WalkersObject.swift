//
//  WalkersObject.swift
//  PawBuddy
//
//  Created by Maria Kochetygova on 12/4/17.
//  Copyright © 2017 Maria Kochetygova. All rights reserved.
//

import UIKit

class WalkersObject: NSObject {
    var firstName:String
    var lastName:String
    var service:String
    var price:Int
    var about:String
    var id:String
    var phone:Int
    var photo:UIImage
    var zipCode:Int
    
init(firstName:String,lastName:String,service:String,price:Int,about:String,id:String, phone:Int,photo:UIImage,zipCode:Int) {
        self.firstName=firstName
    self.lastName=lastName
    self.service=service
    self.price=price
    self.about=about
    self.id=id
    self.phone=phone
    self.photo=photo
    self.zipCode=zipCode
    }
    
    
    
    
    

}
