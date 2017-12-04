//
//  DogsSitterViewController.swift
//  PawBuddy
//
//  Created by Maria Kochetygova on 11/21/17.
//  Copyright © 2017 Maria Kochetygova. All rights reserved.
//

import UIKit

class DogsSitterViewController: UIViewController, UITableViewDataSource, UITableViewDelegate,
UIBarPositioningDelegate {
    func position(for bar: UIBarPositioning) -> UIBarPosition{
        return .topAttached
    }
    @IBAction func BacktoMain(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        
        dismiss(animated: true, completion: nil)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return listWalkers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellSitter", for: indexPath)
        cell.textLabel?.text=listWalkers[indexPath.row].Name
        
        
        return cell
    }
   
    var listWalkers=[Walkers(name:"Rober", wage: 20, pic:UIImage(named:"dog.png")!),Walkers(name:"Rober", wage: 20, pic:UIImage(named:"dog.png")!),
                     Walkers(name:"Rober", wage: 20, pic:UIImage(named:"dog.png")!)]
    

    override func viewDidLoad() {
        super.viewDidLoad()
 self.tabBarController?.tabBar.isHidden = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tablePolulateCat(_ sender: Any) {
        
    }
    
    @IBAction func tablePolucateDog(_ sender: Any) {
        
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
