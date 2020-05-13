//
//  SACustomGriddedContentCollectionViewDelegate.swift
//  SAGridLayout
//
//  Created by Алексей Семенов on 12.05.2020.
//  Copyright © 2020 Алексей Семенов. All rights reserved.
//

import UIKit

//MARK: - class for combination of the first two presentation styles(tabled & 3 item per row)
class SACustomGriddedContentCollectionViewDelegate: SADefaultCollectionViewDelegate {
    private let itemsPerRow: CGFloat = 3
    private let minimumItemSpacing: CGFloat = 8
    

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemSize: CGSize
        if indexPath.item % 4 == 0 {
            let paddingSpace = sectionInsets.left + sectionInsets.right
            let itemWidth = collectionView.bounds.width - paddingSpace
            itemSize = CGSize(width: itemWidth, height: 112)
        } else {
            let paddingSpace = sectionInsets.left + sectionInsets.right + minimumItemSpacing * (itemsPerRow - 1)
            let availableWidth = collectionView.bounds.width - paddingSpace
            let widthPerItem = availableWidth / itemsPerRow
            itemSize = CGSize(width: widthPerItem, height: widthPerItem)
        }
        return itemSize
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return minimumItemSpacing
    }
}
