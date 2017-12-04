//
//  VeterinarianViewController.swift
//  PawBuddy
//
//  Created by Maria Kochetygova on 11/22/17.
//  Copyright © 2017 Maria Kochetygova. All rights reserved.
//

import UIKit

class VeterinarianViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    var arr : [NSDictionary] = [NSDictionary]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
   return listWalkers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "doctorcell", for: indexPath)
        cell.textLabel?.text=listWalkers[indexPath.row].Name
        
        
        return cell
    }
    
    var listWalkers=[Walkers(name:"Rober", wage: 20, pic:UIImage(named:"dog.png")!),Walkers(name:"Rober", wage: 20, pic:UIImage(named:"dog.png")!),
                     Walkers(name:"Rober", wage: 20, pic:UIImage(named:"dog.png")!)]
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
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
