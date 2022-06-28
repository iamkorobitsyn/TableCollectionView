//
//  MembersCell.swift
//  TableCollectionView
//
//  Created by Александр Коробицын on 19.06.2022.
//

import Foundation
import UIKit

class MembersTableCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var data = [String]()

    var collection: UICollectionView = {
            let layout = UICollectionViewFlowLayout()
            layout.itemSize = .init(width: 90, height: 90)
            layout.scrollDirection = .horizontal
            layout.minimumLineSpacing = 10
            let collectionView = UICollectionView(frame: .zero , collectionViewLayout: layout)
            collectionView.translatesAutoresizingMaskIntoConstraints = false
            return collectionView
        }()
    
    
    
    
    override init(style: UITableViewCell.CellStyle , reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        contentView.addSubview(collection)
        collection.showsHorizontalScrollIndicator = false
        collection.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 100)
        collection.dataSource = self
        collection.delegate = self
        collection.register(MembersCollectionCell.self, forCellWithReuseIdentifier: "MembersCollectionCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collection.dequeueReusableCell(withReuseIdentifier: "MembersCollectionCell", for: indexPath) as? MembersCollectionCell {
            cell.image.image = UIImage(named: data[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
