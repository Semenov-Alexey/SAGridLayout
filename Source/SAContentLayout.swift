//
//  SAContentLayout.swift
//  SAGridLayout
//
//  Created by Алексей Семенов on 12.05.2020.
//  Copyright © 2020 Алексей Семенов. All rights reserved.
//

import Foundation
import UIKit

public class SAContentLayout {
    public static let shared = SAContentLayout() 
    private init() {}
    
   public func updateContentStyle(view: UIView, stackView: UIStackView, ibLabel: [UILabel]) {
        let isHorizontalStyle = view.bounds.width > 2 * view.bounds.height
             
             let oldAxis = stackView.axis
            
             let newAxis: NSLayoutConstraint.Axis = isHorizontalStyle ? .horizontal : .vertical
             guard oldAxis != newAxis else { return }

             stackView.axis = newAxis
             stackView.spacing = isHorizontalStyle ? 16 : 4
             ibLabel.forEach { (label) in
                label.textAlignment = isHorizontalStyle ? .left : .center
           }
         
             
 //MARK: - transform font size with animation
             let fontTransform: CGAffineTransform = isHorizontalStyle ? .identity : CGAffineTransform(scaleX: 0.8, y: 0.8)
             
             UIView.animate(withDuration: 0.3) {
               ibLabel.forEach { (label) in
                   label.transform = fontTransform
                
               }
             
             }
    
         }
    
    
     
}

