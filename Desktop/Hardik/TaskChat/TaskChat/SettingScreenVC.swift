//
//  SettingScreenVC.swift
//  TaskChat
//
//  Created by agile-13 on 16/02/18.
//  Copyright © 2018 Agile. All rights reserved.
//

import UIKit

class SettingScreenVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var btn_menu: UIBarButtonItem!
    
    var Arraylbl:Array = [String]()
   // var iconimageArr:Array = [UIImage]()

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Settings"
        btn_menu.target = revealViewController()
        btn_menu.action = #selector(SWRevealViewController.revealToggle(_:))
        
        self.navigationController?.isNavigationBarHidden = true;

        
        Arraylbl = ["Edit Profile","Notification","Email Notification","Feedback","Logout"]

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return  Arraylbl.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! SettingTableViewCell
        
        cell.textLabel?.text = Arraylbl[indexPath.row]
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
  }
