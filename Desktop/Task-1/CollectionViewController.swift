//
//  CollectionViewController.swift
//  Task-1
//
//  Created by agile-13 on 07/03/18.
//  Copyright © 2018 Agile. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource{

    var model = [Model]()

    @IBOutlet var collectionV: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        model = Model.getData()
        collectionV.delegate = self
        collectionV.dataSource = self
        collectionV.register(UINib.init(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
    }

   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return  model.count
        
       
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionV.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        print(model[indexPath.row].name)
        cell.lblname.text = model[indexPath.row].name
        cell.textview.text = model[indexPath.row].desc
        let image = model[indexPath.row].imageName
        cell.imagview.image = UIImage(named: image!)
        
        
        return cell

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
