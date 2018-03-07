//
//  ViewController.swift
//  Task-1
//
//  Created by agile-13 on 07/03/18.
//  Copyright © 2018 Agile. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,sendToSecond{

    var model = [Model]()
    override func viewDidLoad() {
        super.viewDidLoad()
    
        model = Model.getData()
        mytableView.delegate = self
        mytableView.dataSource = self
        
        mytableView.register(UINib.init(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        
        print(model.count)
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet var mytableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        print(model[indexPath.row].name)
        cell.name.text = model[indexPath.row].name
        cell.descTv.text = model[indexPath.row].desc
        let image = model[indexPath.row].imageName
        cell.imagV.image = UIImage(named: image!)
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
       
        let detailVc:ThirdViewController = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        
        detailVc.delegate = self
        
        detailVc.indexPath = indexPath
        detailVc.name = model[indexPath .row].name
        detailVc.desc = model[indexPath.row].desc
        
        self.navigationController?.pushViewController(detailVc, animated: true)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func dataPassing(name:String?,desc:String?,indexpath:IndexPath?)->(Void){
    
        if let indexPath = indexpath
        {
            
            model[(indexpath?.row)!] =  Model(name: name!, desc: desc!, imageName: "1")
            DispatchQueue.main.async {
                self.mytableView.reloadData()
            }
        }
    }
}

