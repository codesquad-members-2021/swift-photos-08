//
//  ViewController.swift
//  PhotosApp
//
//  Created by Ador on 2021/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorCollection: UICollectionView!
    
    private let colorDataSource = ColorCollectionDataSource()
    private let colorFlowLayout = ColorCollectionFlowLayout()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorCollection.dataSource = colorDataSource
        colorCollection.delegate = colorFlowLayout
    }
}

