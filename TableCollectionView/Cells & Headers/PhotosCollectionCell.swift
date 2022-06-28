//
//  PhotosCollectionCell.swift
//  TableCollectionView
//
//  Created by Александр Коробицын on 28.06.2022.
//

import Foundation
import UIKit

class PhotosCollectionCell: UICollectionViewCell, UICollectionViewDelegate {
        let image = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
       
        contentView.addSubview(image)
        contentView.clipsToBounds = true
        
        image.translatesAutoresizingMaskIntoConstraints = false
        image.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        image.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        image.widthAnchor.constraint(equalToConstant: contentView.bounds.width).isActive = true
        image.heightAnchor.constraint(equalToConstant: contentView.bounds.height).isActive = true
        image.contentMode = .scaleAspectFill
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
