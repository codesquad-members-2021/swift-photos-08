//
//  DoodlesViewController.swift
//  PhotosApp
//
//  Created by HOONHA CHOI on 2021/03/24.
//

import UIKit

class DoodlesViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        title = "Doodles"
        
        let rightButton = UIBarButtonItem(title: "Close", style: .plain, target: self, action: #selector(close(_:)))
        navigationItem.rightBarButtonItem = rightButton
    }
    
    @objc func close(_ sender : UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
}
