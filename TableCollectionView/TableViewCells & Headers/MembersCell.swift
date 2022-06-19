//
//  MembersCell.swift
//  TableCollectionView
//
//  Created by Александр Коробицын on 19.06.2022.
//

import Foundation
import UIKit

class MembersCell: UITableViewCell {
    
    
    let image = UIImageView()
    
    override init(style: UITableViewCell.CellStyle , reuseIdentifier: String?) {
          super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(image)
        
        image.translatesAutoresizingMaskIntoConstraints = false
        
        image.heightAnchor.constraint(equalToConstant: 50).isActive = true
        image.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        image.image = UIImage(named: "1967 - The Piper At The Gates Of Dawn")
        image.contentMode = .scaleAspectFill
        
    
      }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
