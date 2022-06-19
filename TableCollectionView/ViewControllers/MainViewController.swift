//
//  ViewController.swift
//  PinkTableView
//
//  Created by Александр Коробицын on 10.06.2022.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let headerV = UIImageView()
    var headerView = MainHeaderView()
    var tableview = UITableView()
   

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Hello"
        
        createTableView()

        setupHeaderView()
        
    }
    
 

    func createTableView() {
        
        tableview = UITableView(frame: view.bounds, style: .plain)
        tableview.register(MembersCell.self, forCellReuseIdentifier: "MembersCell")
        self.tableview.delegate = self
        self.tableview.dataSource = self
        
        view.addSubview(tableview)
        
        tableview.translatesAutoresizingMaskIntoConstraints = false
        tableview.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableview.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableview.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableview.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true

        
    }
    
    func setupHeaderView() {
        let headerFrame = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 200))
       
        let view = headerV
        headerFrame.insertSubview(view, at: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        view.centerXAnchor.constraint(equalTo: headerFrame.centerXAnchor).isActive = true
        view.centerYAnchor.constraint(equalTo: headerFrame.centerYAnchor).isActive = true
        
        headerV.translatesAutoresizingMaskIntoConstraints = false
        headerV.widthAnchor.constraint(equalTo: headerFrame.widthAnchor).isActive = true
        headerV.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        headerV.image = UIImage(named: "startImage")
        headerV.contentMode = .scaleAspectFill
        headerV.clipsToBounds = true
        
        tableview.tableHeaderView = headerFrame
        
    }
    
    
    
    
    //MARK: - UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 3
        case 1:
            return 2
        case 2:
            return 1
        default:
            break
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MembersCell", for: indexPath) as? MembersCell {
        return cell
    }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "Hello"
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        50
    }
    
    
    
    
    
    //MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
}

