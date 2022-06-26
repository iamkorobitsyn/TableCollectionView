//
//  UIcolor + Extention.swift
//  TableCollectionView
//
//  Created by Александр Коробицын on 25.06.2022.
//

import UIKit

extension UIColor {
    convenience init(r: CGFloat, g:CGFloat, b:CGFloat, alpha:CGFloat = 1) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: alpha)
    }
    
    static let customDark = UIColor {traitCollection -> UIColor in
        switch traitCollection.userInterfaceStyle {
        case .light, .unspecified:
            return systemGray2.withAlphaComponent(0.3)
        case .dark:
            return systemGray2.withAlphaComponent(0.3)
        default:
            return systemGray2
        }
    }
}

