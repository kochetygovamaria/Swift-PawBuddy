//
//  InfoAccountViewController.swift
//  PawBuddy
//
//  Created by Maria Kochetygova on 11/23/17.
//  Copyright © 2017 Maria Kochetygova. All rights reserved.
//

import UIKit

class InfoAccountViewController: UIViewController,  UIBarPositioningDelegate {
    func position(for bar: UIBarPositioning) -> UIBarPosition{
        return .topAttached
    }
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }
    override func viewDidLoad() {
        super.viewDidLoad()
UIApplication.shared.statusBarStyle = .lightContent
        // Do any additional setup after loading the view.
    }

    @IBAction func LogOut(_ sender: Any) {
        UserDefaults.standard.set(false, forKey:"isUserLogin")
        UserDefaults.standard.synchronize()
        Switcher.updateRootVC()
    
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
