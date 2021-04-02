//
//  Color.swift
//  PhotosApp
//
//  Created by HOONHA CHOI on 2021/03/22.
//

import Foundation
import UIKit

extension UIColor {
    static var random: UIColor {
          return .init(hue: .random(in: 0...1), saturation: 1, brightness: 1, alpha: 1)
      }
}
