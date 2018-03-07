//
//  ThirdViewController.swift
//  Task-1
//
//  Created by agile-13 on 07/03/18.
//  Copyright © 2018 Agile. All rights reserved.
//

import UIKit

protocol sendToSecond :class{
    
    func dataPassing(name:String?,desc:String?,indexpath:IndexPath?)->(Void)
    
}


class ThirdViewController: UIViewController{
    @IBOutlet var nameTF: UITextField!

    @IBOutlet var saveBtn: UIButton!
    @IBOutlet var descTv: UITextView!

   
    weak var delegate:sendToSecond?
    
    var indexPath : IndexPath?
    var name:String?
    var desc:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = name{
        
            nameTF.text = name
        }
        if let desc  = desc
        {
            descTv.text = desc
        }
       
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func saveBtnAction(_ sender: Any)
    {
        delegate?.dataPassing(name: nameTF.text, desc: descTv.text,indexpath: indexPath)
        self.navigationController?.popViewController(animated: true)
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

