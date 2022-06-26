//
//  SettingsViewController.swift
//  TableCollectionView
//
//  Created by Александр Коробицын on 24.06.2022.
//

import Foundation
import UIKit

class SettingsViewcontroller: UIViewController {
    
    let settingsView = UIVisualEffectView()
    var segmentedControl = UISegmentedControl()
    
    var segmentMenuArrey = ["system", "light", "dark"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .none
        
        createSettingsView()
        addSegmentedControl()
        
        let tapView = UITapGestureRecognizer(target: self, action: #selector(didTapView))
        view.addGestureRecognizer(tapView)
        
        segmentedControl.addTarget(self, action: #selector(segmentedControlTap), for: .valueChanged )
        segmentedControl.selectedSegmentIndex = MTUserDevaults.shared.theme.rawValue
        
    }
    
    @objc func segmentedControlTap() {
        MTUserDevaults.shared.theme = Theme(rawValue: segmentedControl.selectedSegmentIndex) ?? .device
        view.window?.overrideUserInterfaceStyle = MTUserDevaults.shared.theme.getUserInterfaceStyle()
    }
    
    private func createSettingsView() {
    
        let blurEffect = UIBlurEffect(style: .systemThinMaterialDark)
        settingsView.effect = blurEffect
        
        view.addSubview(settingsView)
        
        settingsView.translatesAutoresizingMaskIntoConstraints = false
        settingsView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        settingsView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height / 3).isActive = true
        settingsView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        settingsView.layer.cornerRadius = UIScreen.main.bounds.width / 21
        settingsView.clipsToBounds = true
    }
    
    private func addSegmentedControl() {
        
        segmentedControl = UISegmentedControl(items: segmentMenuArrey)
        segmentedControl.setTitleTextAttributes([.foregroundColor : UIColor.lightGray], for: .normal)
        
        segmentedControl.layer.borderWidth = 0.2
        segmentedControl.layer.borderColor = UIColor.systemGray6.cgColor
        segmentedControl.alpha = 0.9
        settingsView.contentView.addSubview(segmentedControl)
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl.widthAnchor.constraint(equalToConstant: 250).isActive = true
        segmentedControl.heightAnchor.constraint(equalToConstant: 50).isActive = true
        segmentedControl.centerXAnchor.constraint(equalTo: settingsView.centerXAnchor).isActive = true
        segmentedControl.centerYAnchor.constraint(equalTo: settingsView.centerYAnchor).isActive = true
    }
    @objc func didTapView() {
        dismiss(animated: true)
    }
    
}
