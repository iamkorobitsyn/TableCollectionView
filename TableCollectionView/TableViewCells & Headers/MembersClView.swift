//
//  MembersCell.swift
//  TableCollectionView
//
//  Created by Александр Коробицын on 19.06.2022.
//

import Foundation
import UIKit

class MembersCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let test = Album()

    private let collection: UICollectionView = {
            let layout = UICollectionViewFlowLayout()
            layout.itemSize = .init(width: 80, height: 80)
            layout.scrollDirection = .horizontal
            let collectionView = UICollectionView(frame: .zero , collectionViewLayout: layout)
            collectionView.translatesAutoresizingMaskIntoConstraints = false
            return collectionView
        }()
    
    let layout = UICollectionViewFlowLayout()
    
    override init(style: UITableViewCell.CellStyle , reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        contentView.addSubview(collection)
        
        collection.showsHorizontalScrollIndicator = false
        collection.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 100)
        collection.dataSource = self
        collection.delegate = self
        collection.register(CollectionCell.self, forCellWithReuseIdentifier: "CollectionCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return test.titles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collection.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as? CollectionCell {
            let image = UIImageView()
            cell.addSubview(image)
            cell.clipsToBounds = true
            cell.layer.cornerRadius = cell.bounds.width / 2
            
            image.translatesAutoresizingMaskIntoConstraints = false
            image.centerXAnchor.constraint(equalTo: cell.centerXAnchor).isActive = true
            image.centerYAnchor.constraint(equalTo: cell.centerYAnchor).isActive = true
            image.widthAnchor.constraint(equalToConstant: cell.bounds.width).isActive = true
            image.heightAnchor.constraint(equalToConstant: cell.bounds.height).isActive = true
            image.contentMode = .scaleAspectFit
            image.image = UIImage(named: test.covers[indexPath.row])
            
            return cell
        }
        return UICollectionViewCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
