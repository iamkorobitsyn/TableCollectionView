//
//  ViewController.swift
//  PinkTableView
//
//  Created by Александр Коробицын on 10.06.2022.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var mainHeader = MainHeader()
    var tableview = UITableView()
   

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Pink Floyd"
        
        
        
        createTableView()
        tableview.tableHeaderView = mainHeader.headerFrame
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
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MembersCell", for: indexPath) as? MembersCell {
            return cell
        }
        return UITableViewCell()
    }
    
   
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        35
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        let text = UILabel()
        view.backgroundColor = UIColor.white.withAlphaComponent(0.1)
        text.font = UIFont.systemFont(ofSize: 30, weight: .light)
        text.textColor = UIColor.white.withAlphaComponent(0.8)
        text.textAlignment = .center
        view.addSubview(text)
        text.translatesAutoresizingMaskIntoConstraints = false
        text.widthAnchor.constraint(equalToConstant: 300).isActive = true
        text.heightAnchor.constraint(equalToConstant: 50).isActive = true
        text.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        text.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    
        
        switch section {
        case 0:
            text.text = "Members"
        case 1:
            text.text = "Albums"
        case 2:
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

