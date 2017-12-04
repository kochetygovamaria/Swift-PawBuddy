//
//  HomeViewController.swift
//  PawBuddy
//
//  Created by Maria Kochetygova on 11/20/17.
//  Copyright © 2017 Maria Kochetygova. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UIBarPositioningDelegate {
    func positionForBar(bar: UIBarPositioning) -> UIBarPosition {
        return .topAttached
       
        
    }
     @IBOutlet weak var DoctorBrn: UIButton!
     @IBOutlet weak var Walkerbtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        UINavigationBar.appearance().barTintColor = UIColor(red: 253/255, green: 158/255, blue: 50/255, alpha: 1)
      
        // Do any additional setup after loading the view.
    }
    
    @IBAction func TraningAction(_ sender: Any) {
    }
    @IBOutlet weak var DogTranaierBtn: UIButton!
    func buttonDesign(button:UIButton){
        button.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        button.layer.masksToBounds = false
        button.layer.shadowRadius = 1.0
        button.layer.shadowOpacity = 0.5
        button.layer.cornerRadius = button.frame.width/2

    }
    @IBOutlet weak var sitters: UIButton!
    @IBAction func SitterAction(_ sender: Any) {
        
    }
    
    @IBAction func ddd(_ sender: Any) {
        UserDefaults.standard.set(false, forKey:"isUserLogin")
        UserDefaults.standard.synchronize()
        
        self.dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var navigation: UINavigationBar!
    @IBOutlet weak var navBar: UINavigationItem!
    @IBAction func LogOutBtn(_ sender: Any) {
        
            UserDefaults.standard.set(false, forKey:"isUserLogin")
            UserDefaults.standard.synchronize()
            
             self.performSegue(withIdentifier: "login", sender: self)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    override func viewWillAppear(_ animated: Bool) {
        if (!UserDefaults.standard.bool(forKey: "isUserLogin")){
            
            self.performSegue(withIdentifier: "login", sender: self)
        }
        self.tabBarController?.tabBar.isHidden = false
      
       
    }

    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
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
