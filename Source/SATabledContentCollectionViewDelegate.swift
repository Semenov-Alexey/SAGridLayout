//
//  SATabledContentCollectionViewDelegate.swift
//  SAGridLayout
//
//  Created by Алексей Семенов on 12.05.2020.
//  Copyright © 2020 Алексей Семенов. All rights reserved.
//

import UIKit

//MARK: - class  for tabled presentation
class SATabledContentCollectionViewDelegate: SADefaultCollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
       
        let paddingSpace = sectionInsets.left + sectionInsets.right
        let widthPerItem = collectionView.bounds.width - paddingSpace
        return CGSize(width: widthPerItem, height: 112)
    }
   
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}
