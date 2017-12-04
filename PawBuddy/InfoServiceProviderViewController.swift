//
//  InfoServiceProviderViewController.swift
//  PawBuddy
//
//  Created by Maria Kochetygova on 11/30/17.
//  Copyright © 2017 Maria Kochetygova. All rights reserved.
//

import UIKit

class InfoServiceProviderViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
 self.navigationItem.title="Info"
        // Do any additional setup after loading the view.
    }

    @IBAction func Requested(_ sender: Any) {
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var NameText: UILabel!
    @IBOutlet weak var AboutText: UITextView!
    @IBOutlet weak var reviewText: UITextView!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBAction func SendRequest(_ sender: Any) {
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
