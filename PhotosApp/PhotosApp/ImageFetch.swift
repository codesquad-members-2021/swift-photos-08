//
//  ImageFetch.swift
//  PhotosApp
//
//  Created by Ador on 2021/03/23.
//

import Foundation
import Photos

class ImageFetch {
    private var imageFetch : PHFetchResult<PHAsset>
    
    init() {
        imageFetch = PHFetchResult()
        requestImage()
    }
    
    func requestImage() {
        imageFetch = PHAsset.fetchAssets(with: FetchOptions())
    }
    
    func count() -> Int {
        return imageFetch.count
    }
    
    func object(at index: Int) -> PHAsset {
        return imageFetch.object(at: index)
    }
}

class FetchOptions: PHFetchOptions {
    private let options: PHFetchOptions
    
    override init() {
        self.options = PHFetchOptions()
        super.init()
        sort()
    }
    
    func sort() {
        options.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: false)]
    }
}
