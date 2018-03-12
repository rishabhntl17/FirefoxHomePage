//
//  CollectionViewCell.swift
//  FirefoxHomePage
//
//  Created by Appinventiv on 2/26/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class CollectionViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var collectionView: UICollectionView!
    
    var topsites = ["apple","bing","facebook","google","icloud","linkedin","twitter","weather","wiki","yahoo"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth: CGFloat = ((UIScreen.main.bounds.width - 30) / 3)
        let cellHeight: CGFloat = ((UIScreen.main.bounds.width - 30) / 3)
        return CGSize(width: cellWidth,height: cellHeight)
    }
    
//    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
//
//        let cellWidth: CGFloat = UIScreen.main.bounds.width / 3
//        return CGSize(width: cellWidth,height: cellWidth)
//    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return topsites.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectioncell", for: indexPath) as! CollectionCell
        cell.imageView.image = UIImage(named : (topsites[indexPath.item] + ".jpeg"))
        cell.descriptionLabel.text = topsites[indexPath.item]
        cell.descriptionLabel.backgroundColor = UIColor.darkGray
        cell.descriptionLabel.textColor = UIColor.white
        cell.descriptionLabel.isHighlighted = true
        return cell
    }
}
