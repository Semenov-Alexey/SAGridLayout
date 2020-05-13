//
//  JewelryCollectionViewCell.swift
//  SAGridLayout_Example
//
//  Created by Алексей Семенов on 12.05.2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import SAGridLayout

class JewelryCollectionViewCell: UICollectionViewCell {
    
 
    
    static let reuseID = String(describing: JewelryCollectionViewCell.self)
    static let nib = UINib(nibName: String(describing: JewelryCollectionViewCell.self), bundle: nil)
    
    @IBOutlet private weak var stackView: UIStackView!
    
    @IBOutlet private weak var ibImageView: UIImageView!
    @IBOutlet private weak var ibLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .white
        clipsToBounds = true
        layer.cornerRadius = 20
        ibLabel.font = UIFont.systemFont(ofSize: 18)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        ibImageView.image = nil
        ibLabel.text = nil
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
 //MARK: - Call this method for updating content style by your cell
        SAContentLayout.shared.updateContentStyle(view: self, stackView: stackView, ibLabel: [ibLabel])
            
        
       
    }
 
     func config(title: String, image: UIImage) {
           ibImageView.image = image
           ibLabel.text = title
       }
 
}
