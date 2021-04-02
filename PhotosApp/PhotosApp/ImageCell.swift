//
//  ImageCollectionViewCell.swift
//  PhotosApp
//
//  Created by HOONHA CHOI on 2021/03/23.
//

import UIKit
import Photos
import PhotosUI

class ImageCell: UICollectionViewCell {
    @IBOutlet weak var imageView : UIImageView!
    @IBOutlet weak var livePhotoStateView: UIImageView!
    
    static let identifier = "ImageCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    func check(_ asset : PHAsset) -> UIImage {
        return asset.mediaSubtypes == .photoLive ? PHLivePhotoView.livePhotoBadgeImage(options: .overContent) : UIImage()
    }
    
    func setImage(_ image: UIImage?) {
        guard let img = image else {
            return
        }
        imageView.image = img
    }
}
