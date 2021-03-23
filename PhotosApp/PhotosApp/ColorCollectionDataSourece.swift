//
//  ColorColletionDataSourece.swift
//  PhotosApp
//
//  Created by HOONHA CHOI on 2021/03/22.
//

import Foundation
import UIKit
import Photos

class ColorCollectionDataSource : NSObject, UICollectionViewDataSource {
    
    var imageFetch : PHFetchResult<PHAsset>!
    let imageManager : PHCachingImageManager = PHCachingImageManager()

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageFetch.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? ImageCollectionViewCell else {
            return UICollectionViewCell()
        }
        let asset = imageFetch.object(at: indexPath.row)
        imageManager.requestImage(for: asset, targetSize: CGSize(width: 100, height: 100), contentMode: .aspectFit, options: nil) { (image, _) in
            cell.imageView.image = image
        }
        return cell
    }
    
    func requestImage() {
        let options = PHFetchOptions()
        options.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: false)]
        
        imageFetch = PHAsset.fetchAssets(with: options)
    }
        
}
