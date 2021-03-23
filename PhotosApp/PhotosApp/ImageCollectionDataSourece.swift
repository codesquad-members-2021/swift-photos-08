//
//  ColorColletionDataSourece.swift
//  PhotosApp
//
//  Created by HOONHA CHOI on 2021/03/22.
//

import Foundation
import UIKit
import Photos

class ImageCollectionDataSource : NSObject, UICollectionViewDataSource {
    
    let imageFetch: ImageFetch
    let imageManager : PHCachingImageManager

    override init() {
        self.imageFetch = ImageFetch()
        self.imageManager = PHCachingImageManager()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageFetch.count()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ImageCell.identifier, for: indexPath) as? ImageCell else {
            return UICollectionViewCell()
        }
        let asset = imageFetch.object(at: indexPath.row)
        imageManager.requestImage(for: asset, targetSize: CGSize(width: 100, height: 100), contentMode: .aspectFit, options: nil) { (image, _) in
            cell.setImage(image)
        }
        return cell
    }
        
}
