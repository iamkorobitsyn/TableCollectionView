//
//  ViewController.swift
//  PinkTableView
//
//  Created by Александр Коробицын on 10.06.2022.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let backgroundView = UIImageView()
    var mainHeader = MainHeader()
    var tableview = UITableView()
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Pink Floyd"
        
        createItem()
        createTableView()
        tableview.tableHeaderView = mainHeader.headerFrame
    }


    //MARK: - Create Item
    
    private func createItem() {
    let customView = UIButton()
    customView.translatesAutoresizingMaskIntoConstraints = false
    customView.widthAnchor.constraint(equalToConstant: 40).isActive = true
    customView.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    let image = UIImage(named: "themeIcon")
    let tintedImage = image?.withRenderingMode(.alwaysTemplate)
    customView.setImage(tintedImage, for: .normal)
        customView.tintColor = UIColor.label
        customView.contentMode = .scaleAspectFit

    customView.addTarget(self, action: #selector(settingsPresent), for: .touchUpInside)
    navigationItem.rightBarButtonItem = UIBarButtonItem(customView: customView)
    }
    
    @objc func settingsPresent() {
        let vc = SettingsViewcontroller()
        vc.modalPresentationStyle = .popover
        present(vc, animated: true)
    }
    
    //MARK: - Create TableView
 
    func createTableView() {
        
        tableview = UITableView(frame: view.bounds, style: .plain)
        tableview.register(MembersCell.self, forCellReuseIdentifier: "MembersCell")
        self.tableview.delegate = self
        self.tableview.dataSource = self
        
        view.addSubview(tableview)
        
        tableview.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        tableview.sectionHeaderTopPadding = 0
        tableview.separatorStyle = .none
    }


    //MARK: - UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 1
        case 2:
            return 1
        default:
            break
        }
        return 0
    }
    
 

    //MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        switch indexPath {
        case [0, 0]:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "MembersCell", for: indexPath) as? MembersCell {
                cell.backgroundColor = UIColor.red
                return cell
            }
        case [1, 0]:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "MembersCell", for: indexPath) as? MembersCell {
                cell.backgroundColor = UIColor.blue
                return cell
            }
        case [2, 0]:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "MembersCell", for: indexPath) as? MembersCell {
                cell.backgroundColor = UIColor.green
                return cell
            }
        default:
            break
        }
        return UITableViewCell()
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        35
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        let icon = UIImageView()
        let accessory = UIImageView()
        let text = UILabel()
        view.backgroundColor = UIColor.customDark
        view.addSubview(text)
        view.addSubview(icon)
        view.addSubview(accessory)
        
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.widthAnchor.constraint(equalToConstant: 15).isActive = true
        icon.heightAnchor.constraint(equalToConstant: 15).isActive = true
        icon.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        icon.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        icon.contentMode = .scaleAspectFit
        
        text.translatesAutoresizingMaskIntoConstraints = false
        text.widthAnchor.constraint(equalToConstant: 200).isActive = true
        text.heightAnchor.constraint(equalToConstant: 50).isActive = true
        text.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60).isActive = true
        text.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        text.font = UIFont.systemFont(ofSize: 20, weight: .thin)
        text.textColor = UIColor.label.withAlphaComponent(0.6)
        text.textAlignment = .left
        
        accessory.translatesAutoresizingMaskIntoConstraints = false
        accessory.widthAnchor.constraint(equalToConstant: 15).isActive = true
        accessory.heightAnchor.constraint(equalToConstant: 15).isActive = true
        accessory.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        accessory.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        accessory.image = UIImage.init(systemName: "chevron.right")
        accessory.tintColor = UIColor.label.withAlphaComponent(0.4)
        accessory.contentMode = .scaleAspectFit
    
        switch section {
        case 0:
            icon.image = UIImage(named: "members")?.withTintColor(UIColor.label.withAlphaComponent(0.4))
            text.text = "Members"
        case 1:
            icon.image = UIImage(named: "albums")?.withTintColor(UIColor.label.withAlphaComponent(0.4))
            text.text = "Albums"
        case 2:
            icon.image = UIImage(named: "photos")?.withTintColor(UIColor.label.withAlphaComponent(0.4))
            text.text = "Photos"
        default:
            break
        }
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

