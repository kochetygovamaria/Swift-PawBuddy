//
//  CreateViewController.swift
//  PawBuddy
//
//  Created by Maria Kochetygova on 11/18/17.
//  Copyright © 2017 Maria Kochetygova. All rights reserved.
//

import UIKit
import CoreData

class CreateViewController: UIViewController {

    @IBAction func Nextbtn(_ sender: Any) {
       var emailT=emailTxt.text
        var passwordT=passwordTxt.text
        if (emailT?.isEmpty)! && (passwordT?.isEmpty)!{
            dispayAlert(userText: "Please fill out all fields")
            return
        }
        
        else{
            save(Fname: firstNameTxt.text!, Lname: lastNameTxt.text!, email: emailTxt.text!, password: passwordTxt.text!, zip:  Int(zipTxt.text!)!, city: cityTxt.text!, state: stateTxt.text!, pet: addressTxt.text!, login:false)
        }
        
        let alertController = UIAlertController(title: "Success", message: "Thank you for creating an account", preferredStyle: UIAlertControllerStyle.alert)
        let cancelAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.cancel) { action in
            self.dismiss(animated: true, completion: nil)
            
        }
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    func save(Fname: String, Lname:String, email:String, password:String,zip:Int,city:String,state:String, pet:String, login:Bool) {
       
        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
                return
        }
        
        // 1
        let managedContext =
            appDelegate.persistentContainer.viewContext
        // 2
        let entity =
            NSEntityDescription.entity(forEntityName: "UserInfo",
                                       in: managedContext)!
        
        let person = NSManagedObject(entity: entity,
                                     insertInto: managedContext)
        
        // 3
        person.setValue(Fname, forKeyPath: "firstName")
         person.setValue(Lname, forKeyPath: "lastName")
         person.setValue(email, forKeyPath: "email")
         person.setValue(password, forKeyPath: "password")
         person.setValue(state, forKeyPath: "state")
        person.setValue(zip, forKeyPath: "zip")
        person.setValue(city, forKeyPath: "city")
        person.setValue(pet, forKey: "pet")
        person.setValue(login, forKey: "login")
        // 4
        do {
            try managedContext.save()
            personList.append(person)
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
    
    func dispayAlert(userText:String){
        let alertController = UIAlertController(title: "Error", message: userText, preferredStyle: UIAlertControllerStyle.alert)
        let cancelAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.cancel) { (result : UIAlertAction) -> Void in
        }

        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var lastNameTxt: UITextField!
    @IBOutlet weak var firstNameTxt: UITextField!
    @IBOutlet weak var stateTxt: UITextField!
    @IBOutlet weak var zipTxt: UITextField!
    @IBOutlet weak var addressTxt: UITextField!
    @IBOutlet weak var cityTxt: UITextField!
    override func viewDidLoad() {
 
        super.viewDidLoad()
       
        view.backgroundColor=UIColor(red: 253/255, green: 158/255, blue: 50/255, alpha: 1)
        // Do any additional setup after loading the view.
        border(name: firstNameTxt)
        border(name: lastNameTxt)
        border(name:cityTxt)
        border(name: addressTxt)
        border(name: stateTxt)
        border(name: zipTxt)
        border(name: emailTxt)
        border(name: passwordTxt)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func border(name:UITextField){
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor.white.cgColor
        border.frame = CGRect(x: 0, y: name.frame.size.height - width, width:  name.frame.size.width, height: name.frame.size.height)
        
        border.borderWidth = width
        name.layer.addSublayer(border)
        name.layer.masksToBounds = true
    }
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //1
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
                return
        }
        
        let managedContext=appDelegate.persistentContainer.viewContext
        
        //2
        let fetchRequest =
            NSFetchRequest<NSManagedObject>(entityName: "UserInfo")
        
        //3
        do {
            personList = try managedContext.fetch(fetchRequest)
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
