//
//  SACollectionViewController.swift
//  SAGridLayout
//
//  Created by Алексей Семенов on 12.05.2020.
//  Copyright © 2020 Алексей Семенов. All rights reserved.
//

import Foundation
import UIKit


open class SACollectionViewController: UICollectionViewController {
   
//MARK: - Create enum PresentationStyle for all possible presentation states. To the navigation bar, also add a button for switching between states.
public enum PresentationStyle: String, CaseIterable {
       case table
       case defaultGrid
       case customGrid

      public var buttonImage: UIImage {

             switch self {
             case .table: return (UIImage(systemName: "rectangle.grid.1x2")?
                                 .withTintColor(.systemRed,renderingMode: .alwaysOriginal))!
                
             case .defaultGrid: return  (UIImage(systemName: "square.grid.2x2")?
                                 .withTintColor(.systemRed,renderingMode: .alwaysOriginal))!
                
             case .customGrid: return  (UIImage(systemName: "rectangle.3.offgrid")?
                                 .withTintColor(.systemRed, renderingMode: .alwaysOriginal))!
            }
    }

   }
   
   public var selectedStyle: PresentationStyle = .table
   {
    didSet { updatePresentationStyle() }
   }
    
//MARK: - a dictionary of all available presentation types
   private var styleDelegates: [PresentationStyle: SACollectionViewSelectableItemDelegate] = {
       let result: [PresentationStyle: SACollectionViewSelectableItemDelegate] = [
           .table: SATabledContentCollectionViewDelegate(),
           .defaultGrid: SADefaultGriddedContentCollectionViewDelegate(),
           .customGrid: SACustomGriddedContentCollectionViewDelegate(),
       ]
       result.values.forEach {
           $0.didSelectItem = { _ in
               print("Item selected")
           }
       }
       return result
   }()

//MARK: - call this method in viewdidload of your collectionviewcontroller
public func updatePresentationStyle()  {
       collectionView.delegate = styleDelegates[selectedStyle]

       collectionView.performBatchUpdates({
          collectionView.reloadData()
       }, completion: nil)

     navigationItem.rightBarButtonItem?.image = selectedStyle.buttonImage

   }
    
    
//MARK: - call method in  "action" inside (.addTarget etc) for changing content layout
   @objc public func changeContentLayout() {
          
          let allCases = PresentationStyle.allCases
          guard let index = allCases.firstIndex(of: selectedStyle) else { return }
          let nextIndex = (index + 1) % allCases.count
          selectedStyle = allCases[nextIndex]
     
         
          
      }
  
}
