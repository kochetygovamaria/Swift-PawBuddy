//
//  AccountViewController.swift
//  PawBuddy
//
//  Created by Maria Kochetygova on 11/20/17.
//  Copyright © 2017 Maria Kochetygova. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController, UIBarPositioningDelegate {
    func position(for bar: UIBarPositioning) -> UIBarPosition{
        return .topAttached
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func Logout(_ sender: Any) {
         UserDefaults.standard.set(false, forKey:"isUserLogin")
        UserDefaults.standard.synchronize()
        
        self.dismiss(animated: true, completion: nil)
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
