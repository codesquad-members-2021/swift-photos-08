//
//  DoodleCell.swift
//  PhotosApp
//
//  Created by HOONHA CHOI on 2021/03/24.
//

import UIKit

class DoodleCell: UICollectionViewCell {
    @IBOutlet weak var doodleImage: UIImageView!
    
    static var identifier : String {
        return "DoodleCell"
    }
    
    static var nib : UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let gesture = UILongPressGestureRecognizer(target: self, action: #selector(touch))
        self.addGestureRecognizer(gesture)
    }
    
    @objc func touch() {
        
    }
}
