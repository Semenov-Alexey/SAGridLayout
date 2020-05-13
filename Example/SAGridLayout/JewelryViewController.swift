//
//  ViewController.swift
//  SAGridLayout
//
//  Created by Semenov-Alexey on 05/12/2020.
//  Copyright (c) 2020 Semenov-Alexey. All rights reserved.
//

import UIKit
import SAGridLayout

class JewelryViewController: SACollectionViewController {
    

private var datasource: [Jewelry] = JewelryProvider.fetchData()
    
    override func viewDidLoad() {
          super.viewDidLoad()
        
          self.collectionView.register(JewelryCollectionViewCell.nib,
                                        forCellWithReuseIdentifier: JewelryCollectionViewCell.reuseID)
          collectionView.contentInset = .zero
          
        
  //MARK: - Always Call this method in viewDidLoad
         updatePresentationStyle()
        
      
        
        
//          navigationItem.rightBarButtonItem?.image = selectedStyle.getButtonImage(images: ["custom_grid","default_grid","table"])
           
        //navigationItem.rightBarButtonItem?.image = selectedStyle.buttonImage
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: selectedStyle.buttonImage, style: .plain, target: self, action: #selector(SACollectionViewController.changeContentLayout))
          
//        navigationItem.rightBarButtonItem = UIBarButtonItem(image: selectedStyle.getButtonImage(images: <#T##[String]#>), style: .plain, target: self, action: #selector(SACollectionViewController.changeContentLayout))
        
      }
    
  

    
}

extension JewelryViewController {
        override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return datasource.count
        }

        override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: JewelryCollectionViewCell.reuseID,
                                                                for: indexPath) as? JewelryCollectionViewCell else {
                fatalError("Wrong cell")
            }
            let jewelry = datasource[indexPath.item]
            cell.config(title: jewelry.name, image: jewelry.icon)
            return cell
        }


}

