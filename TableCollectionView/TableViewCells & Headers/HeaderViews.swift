//
//  TitleHeaderView.swift
//  TableCollectionView
//
//  Created by Александр Коробицын on 19.06.2022.
//

import Foundation
import UIKit

class MainHeaderView: UIView {
    
    let image = UIImageView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(image)
        image.translatesAutoresizingMaskIntoConstraints = false
        
        image.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        image.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        image.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        image.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        image.contentMode = .center
        
        image.backgroundColor = UIColor.red
        
        image.image = UIImage(named: "startImage")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
