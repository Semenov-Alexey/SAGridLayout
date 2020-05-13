//
//  SACollectionViewSelectableItemDelegate.swift
//  SAGridLayout
//
//  Created by Алексей Семенов on 12.05.2020.
//  Copyright © 2020 Алексей Семенов. All rights reserved.
//

import UIKit

//MARK: - CollectionViewSelectableItemDelegate protocol that will expand the basic UICollectionViewDelegateFlowLayout protocol. Protocol will determine the closure for cell selection
protocol SACollectionViewSelectableItemDelegate: class, UICollectionViewDelegateFlowLayout {
    var didSelectItem: ((_ indexPath: IndexPath) -> Void)? { get set }
}


//MARK: - base class that will contain all common logic for each presentation styles
class SADefaultCollectionViewDelegate: NSObject, SACollectionViewSelectableItemDelegate {
    var didSelectItem: ((_ indexPath: IndexPath) -> Void)?
    let sectionInsets = UIEdgeInsets(top: 16.0, left: 16.0, bottom: 20.0, right: 16.0)
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        didSelectItem?(indexPath)
       
    }
    
    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.backgroundColor = .clear
    }
    
    func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.backgroundColor = .white
    }

}
