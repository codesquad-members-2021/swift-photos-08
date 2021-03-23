//
//  ImageCollectionViewCell.swift
//  PhotosApp
//
//  Created by HOONHA CHOI on 2021/03/23.
//

import UIKit

class ImageCell: UICollectionViewCell {
    @IBOutlet weak var imageView : UIImageView!
    
    func setImage(_ image: UIImage?) {
        imageView.image = image
    }
}
