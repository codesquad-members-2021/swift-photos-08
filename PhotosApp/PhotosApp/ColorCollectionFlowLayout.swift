//
//  colorCollectionFlowLayout.swift
//  PhotosApp
//
//  Created by HOONHA CHOI on 2021/03/22.
//

import Foundation
import UIKit

class ColorCollectionFlowLayout : NSObject, UICollectionViewDelegateFlowLayout {
    private let size = CGSize(width: 80, height: 80)
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return size
    }
}
