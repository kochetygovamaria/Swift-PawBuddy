//
//  MessagesViewController.swift
//  PawBuddy
//
//  Created by Maria Kochetygova on 11/22/17.
//  Copyright © 2017 Maria Kochetygova. All rights reserved.
//

import UIKit

import AudioToolbox
class MessagesViewController: UIViewController, UIBarPositioningDelegate,UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "notifyCell", for: indexPath)

        return cell
    }
    
    func position(for bar: UIBarPositioning) -> UIBarPosition{
        return .topAttached
    }
    override func viewDidLoad() {
        super.viewDidLoad()
 UIApplication.shared.statusBarStyle = .lightContent
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let row = indexPath.row
        print("Row: \(row)")
        
        
        
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "serviceProvider") as! InfoServiceProviderViewController
        let cell = tableView.cellForRow(at: indexPath)
        let text = cell?.textLabel?.text
        
        self.navigationController?.pushViewController(secondViewController, animated: true)
        
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
