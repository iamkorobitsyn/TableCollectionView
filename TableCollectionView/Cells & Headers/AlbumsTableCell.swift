//
//  AlbumsTableCell.swift
//  TableCollectionView
//
//  Created by Александр Коробицын on 28.06.2022.
//

import Foundation
import UIKit

class AlbumsTableCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var data = [String]()

    var collection: UICollectionView = {
            let layout = UICollectionViewFlowLayout()
            layout.itemSize = .init(width: 150, height: 150)
            layout.scrollDirection = .horizontal
            layout.minimumLineSpacing = 1
            let collectionView = UICollectionView(frame: .zero , collectionViewLayout: layout)
            collectionView.translatesAutoresizingMaskIntoConstraints = false
            return collectionView
        }()
    
    
    
    
    override init(style: UITableViewCell.CellStyle , reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        contentView.addSubview(collection)
        collection.showsHorizontalScrollIndicator = false
        collection.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 150)
        collection.dataSource = self
        collection.delegate = self
        collection.register(AlbumsCollectionCell.self, forCellWithReuseIdentifier: "AlbumsCollectionCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collection.dequeueReusableCell(withReuseIdentifier: "AlbumsCollectionCell", for: indexPath) as? AlbumsCollectionCell {
            
            cell.image.image = UIImage(named: data[indexPath.row])
            
            return cell
        }
        return UICollectionViewCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
