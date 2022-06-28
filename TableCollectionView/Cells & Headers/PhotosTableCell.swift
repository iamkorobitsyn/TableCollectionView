//
//  PhotosTableCell.swift
//  TableCollectionView
//
//  Created by Александр Коробицын on 28.06.2022.
//

import Foundation
import UIKit

class PhotosTableCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var data = [String]()

    var collection: UICollectionView = {
            let layout = UICollectionViewFlowLayout()
            layout.itemSize = .init(width: UIScreen.main.bounds.width / 3 - 1,
                                    height: UIScreen.main.bounds.width / 3 - 1)
            layout.scrollDirection = .vertical
            layout.minimumLineSpacing = 1
            layout.minimumInteritemSpacing = 1
            let collectionView = UICollectionView(frame: .zero , collectionViewLayout: layout)
            collectionView.translatesAutoresizingMaskIntoConstraints = false
            return collectionView
        }()
    
    
    
    
    override init(style: UITableViewCell.CellStyle , reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        contentView.addSubview(collection)
        collection.showsHorizontalScrollIndicator = false
        collection.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 1000)
        collection.dataSource = self
        collection.delegate = self
        collection.register(PhotosCollectionCell.self, forCellWithReuseIdentifier: "PhotosCollectionCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collection.dequeueReusableCell(withReuseIdentifier: "PhotosCollectionCell", for: indexPath) as? PhotosCollectionCell {

            cell.image.image = UIImage(named: data[indexPath.row])
            
            return cell
        }
        return UICollectionViewCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
