//
//  PetViewController.swift
//  PawBuddy
//
//  Created by Maria Kochetygova on 11/20/17.
//  Copyright © 2017 Maria Kochetygova. All rights reserved.
//

import UIKit

class PetViewController: UIViewController {

    @IBOutlet weak var petCollection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var submitBtn: NSLayoutConstraint!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func SubmitAction(_ sender: Any) {
      self.dismiss(animated: true, completion: nil)
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
