//
//  ImageCollectionViewCell.swift
//  PhotosApp
//
//  Created by HOONHA CHOI on 2021/03/23.
//

import UIKit

class ImageCell: UICollectionViewCell {
    @IBOutlet weak var imageView : UIImageView!
    
    static let identifier = "ImageCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    func setImage(_ image: UIImage?) {
        guard let img = image else {
            return
        }
        imageView.image = img
    }
}
