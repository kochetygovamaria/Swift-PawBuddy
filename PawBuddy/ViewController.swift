//
//  ViewController.swift
//  PawBuddy
//
//  Created by Maria Kochetygova on 11/10/17.
//  Copyright © 2017 Maria Kochetygova. All rights reserved.
//

import UIKit
import CoreData
var personList: [NSManagedObject] = []
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=UIColor(red: 253/255, green: 158/255, blue: 50/255, alpha: 1)
        LoginBtn.layer.cornerRadius = 5
        border(name: passwordText)
        border(name: emailText)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func LoginAction(_ sender: Any) {

       
        for i in personList{
            print(i.value(forKey: "email")as? String)
        }
        for person in personList{
            if person.value(forKeyPath: "email") as? String==emailText.text{
                
            if person.value(forKeyPath: "password") as? String==passwordText.text {
               UserDefaults.standard.set(true, forKey:"isUserLogin")
                  UserDefaults.standard.synchronize()
                 Switcher.updateRootVC()
                 
            }
            }
        }
      
        
        
        
       
        
        
        
            }
        

    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var LoginBtn: UIButton!
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
        UIApplication.shared.statusBarStyle = .lightContent
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

  
}

