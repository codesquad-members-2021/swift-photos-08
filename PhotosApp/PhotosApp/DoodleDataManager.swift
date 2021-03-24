//
//  DoodleDataManager.swift
//  PhotosApp
//
//  Created by Ador on 2021/03/24.
//

import Foundation

class DoodleDataManager {
    
    private var doodles: [Doodle]
    
    init() {
        doodles = []
        load()
    }
    
    func load() {
        guard let url = Bundle.main.url(forResource: "doodle", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let model = try? JSONDecoder().decode([Doodle].self, from: data) else {
            return
        }
        doodles = model
    }
    
    func count() -> Int {
        return doodles.count
    }
    
    func getImage(index: Int) -> String {
        return doodles[index].image
    }
}
