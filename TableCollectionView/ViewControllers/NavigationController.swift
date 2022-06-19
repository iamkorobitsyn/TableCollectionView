//
//  NavigationController.swift
//  TableCollectionView
//
//  Created by Александр Коробицын on 16.06.2022.
//

import Foundation
import UIKit

class NavigationController: UINavigationController {
    
    override func viewDidLoad() {
        navigationBar.prefersLargeTitles = true
        navigationBar.backgroundColor = .none
    }
}
