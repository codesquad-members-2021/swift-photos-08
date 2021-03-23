//
//  ViewController.swift
//  PhotosApp
//
//  Created by Ador on 2021/03/22.
//

import UIKit
import Photos

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    private let dataSource = ImageCollectionDataSource()
    private let flowLayout = ImageCollectionFlowLayout()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = dataSource
        collectionView.delegate = flowLayout
        
        PHPhotoLibrary.shared().register(self)
        collectionView.register(ImageCell.nib(), forCellWithReuseIdentifier: ImageCell.identifier)
    }
}

extension ViewController: PHPhotoLibraryChangeObserver {
    func photoLibraryDidChange(_ changeInstance: PHChange) { }
}
