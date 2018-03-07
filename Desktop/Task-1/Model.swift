//
//  Model.swift
//  Task-1
//
//  Created by agile-13 on 07/03/18.
//  Copyright © 2018 Agile. All rights reserved.
//

import Foundation

class Model:NSObject
{
    var name:String?
    var desc:String?
    var imageName:String?
    
    
    
    
    init(name:String,desc:String,imageName:String)
    {
        self.name = name
        self.desc = desc
        self.imageName = imageName
    }

    static func getData()->([Model])
    {
        var dataArray = [Model]()
        
        dataArray.append(Model(name: "Pranav", desc: "Hy Here is ios dev.", imageName: "1"))
    
        dataArray.append(Model(name: "Pranav1", desc: "Hy Here is ios dev1.", imageName: "2"))
        
        dataArray.append(Model(name: "Pranav", desc: "Hy Here is ios dev.", imageName: "3"))
        
        dataArray.append(Model(name: "Pranav", desc: "Hy Here is ios dev.", imageName: "4"))
        
        return dataArray
        
    }
    
    
   
    func customDictionary(model:Model) -> ([String:String])
    {
        var dict = [String:String]()
        
        dict["name"] = model.name
        dict["desc"] = model.desc
        dict["image"] = model.imageName
    
        return dict
    }
    
}

