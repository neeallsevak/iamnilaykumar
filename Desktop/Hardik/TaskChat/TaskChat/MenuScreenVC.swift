//
//  MenuScreenVC.swift
//  TaskChat
//
//  Created by agile-13 on 07/02/18.
//  Copyright © 2018 Agile. All rights reserved.
//

import UIKit

class MenuScreenVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

   
    var menuNameArr:Array = [String]()
    var iconimageArr:Array = [UIImage]()
    
    
    @IBOutlet weak var imgprofile: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        menuNameArr = ["Projects","Calender","Messages","Team","Notifications","Settings"]
        
        iconimageArr = [#imageLiteral(resourceName: "screen"),#imageLiteral(resourceName: "small-calendar"),#imageLiteral(resourceName: "speech-bubble"),#imageLiteral(resourceName: "group"),#imageLiteral(resourceName: "ring"),#imageLiteral(resourceName: "settings")]
        
        
        imgprofile.layer.cornerRadius = 30.0
        imgprofile.layer.masksToBounds = true
        imgprofile.clipsToBounds = true
        
        
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return menuNameArr.count
        
        
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell") as! MenuTableViewCell
        
       
        cell.imgicon.image = iconimageArr[indexPath.row]
        cell.lblMenuname.text = menuNameArr[indexPath.row]
        return cell
	        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let revealViewcontroller:SWRevealViewController =
            self.revealViewController()
        let cell:MenuTableViewCell = tableView.cellForRow(at:
            indexPath) as! MenuTableViewCell
        
        if cell.lblMenuname.text! == "Projects"
        {
            let mainstorybord:UIStoryboard = UIStoryboard(name:
                "Main", bundle: nil)
            let descontroller =
                mainstorybord.instantiateViewController(withIdentifier:
                    "ProjectScreenVC") as!
            ProjectScreenVC
            let newfrontVC =
                UINavigationController.init(rootViewController: descontroller)
            
            revealViewcontroller.pushFrontViewController(newfrontVC,
                                                         animated: true)
        
        }
        
       else if cell.lblMenuname.text! == "Calender"
        {
            let mainstorybord:UIStoryboard = UIStoryboard(name:
                "Main", bundle: nil)
            let descontroller =
                mainstorybord.instantiateViewController(withIdentifier:
                    "CalenderScreenVC") as!
           CalenderScreenVC
            let newfrontVC =
                UINavigationController.init(rootViewController: descontroller)
            
            revealViewcontroller.pushFrontViewController(newfrontVC,
                                                         animated: true)
            
        }   else if cell.lblMenuname.text! == "Notifications"
        {
            let mainstorybord:UIStoryboard = UIStoryboard(name:
                "Main", bundle: nil)
            let descontroller =
                mainstorybord.instantiateViewController(withIdentifier:
                    "NotificationScreenVC") as!
            NotificationScreenVC
            let newfrontVC =
                UINavigationController.init(rootViewController: descontroller)
            
            revealViewcontroller.pushFrontViewController(newfrontVC,
                                                         animated: true)
            
        }else if cell.lblMenuname.text! == "Team"
        {
            let mainstorybord:UIStoryboard = UIStoryboard(name:
                "Main", bundle: nil)
            let descontroller =
                mainstorybord.instantiateViewController(withIdentifier:
                    "TeamMemberScreenVC") as!
            TeamMemberScreenVC
            let newfrontVC =
                UINavigationController.init(rootViewController: descontroller)
            
            revealViewcontroller.pushFrontViewController(newfrontVC,
                                                         animated: true)
            
        }
        else if cell.lblMenuname.text! == "Settings"
        {
            let mainstorybord:UIStoryboard = UIStoryboard(name:
                "Main", bundle: nil)
            let descontroller =
                mainstorybord.instantiateViewController(withIdentifier:
                    "SettingScreenVC") as!
            SettingScreenVC
            let newfrontVC =
                UINavigationController.init(rootViewController: descontroller)
            
            revealViewcontroller.pushFrontViewController(newfrontVC,
                                                         animated: true)
            
        }
        
        
    }
  }
