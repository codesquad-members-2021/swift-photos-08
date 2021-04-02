//
//  colorCollectionFlowLayout.swift
//  PhotosApp
//
//  Created by HOONHA CHOI on 2021/03/22.
//

import Foundation
import UIKit

class ImageCollectionFlowLayout : NSObject, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width / 4
        return CGSize(width: width - 10, height: width - 10)
    }
}
