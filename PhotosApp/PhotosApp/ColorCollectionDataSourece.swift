//
//  ColorColletionDataSourece.swift
//  PhotosApp
//
//  Created by HOONHA CHOI on 2021/03/22.
//

import Foundation
import UIKit

class ColorCollectionDataSource : NSObject, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 40
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        cell.backgroundColor = .random
        return cell
    }
        
}
