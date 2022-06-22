//
//  TitleHeaderView.swift
//  TableCollectionView
//
//  Created by Александр Коробицын on 19.06.2022.
//

import Foundation
import UIKit

class MainHeader: UIView {
    
    let headerFrame = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 200))
    let headerImage = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        headerImage.image = UIImage(named: "darkCoverImage")
        headerImage.contentMode = .scaleAspectFill
        headerImage.clipsToBounds = true
       
        headerFrame.insertSubview(headerImage, at: 1)
        
        headerImage.translatesAutoresizingMaskIntoConstraints = false
        headerImage.widthAnchor.constraint(equalTo: headerFrame.widthAnchor).isActive = true
        headerImage.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

