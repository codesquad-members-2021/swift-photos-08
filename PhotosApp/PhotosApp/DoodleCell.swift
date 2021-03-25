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

    @objc func touch(_ sender: UILongPressGestureRecognizer) {
        self.becomeFirstResponder()
        let menuController = UIMenuController.shared
        menuController.showMenu(from: self, rect: self.bounds)
        let menuItem = UIMenuItem(title: "Save", action: #selector(save(_:)))
        menuController.menuItems = [menuItem]
    }
    
    @objc func save(_ sender: UIMenuItem) {
        guard let image = doodleImage.image else {
            return
        }
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
    }
    
    override var canBecomeFirstResponder: Bool {
        return true
    }
    
    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        return action == #selector(save(_:))
    }
}
