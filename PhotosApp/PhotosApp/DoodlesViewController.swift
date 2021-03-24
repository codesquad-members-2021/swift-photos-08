//
//  DoodlesViewController.swift
//  PhotosApp
//
//  Created by HOONHA CHOI on 2021/03/24.
//

import UIKit

class DoodlesViewController: UICollectionViewController {

    private let manager = DoodleDataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        title = "Doodles"
        
        let rightButton = UIBarButtonItem(title: "Close", style: .plain, target: self, action: #selector(close(_:)))
        navigationItem.rightBarButtonItem = rightButton
        
        collectionView.register(DoodleCell.nib, forCellWithReuseIdentifier: DoodleCell.identifier)
    }
    
    @objc func close(_ sender : UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return manager.count()
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DoodleCell.identifier, for: indexPath) as! DoodleCell
        cell.backgroundColor = .blue
        return cell
    }
}
