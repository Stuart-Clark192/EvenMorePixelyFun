//
//  Bitmap.swift
//  EvenMorePixelyFun
//
//  Created by Stuart on 09/12/2020.
//

import Foundation

struct Bitmap {
    let width: Int
    var pixels: [Pixel]
    
    var height: Int {
        pixels.count / width
    }
    
    subscript(x: Int, y: Int) -> Pixel {
        get { pixels[y * width + x] }
        set { pixels[y * width + x] = newValue }
    }
    
    init(width: Int, height: Int, color: Pixel) {
        self.width = width
        pixels = Array(repeating: color, count: width * height)
    }
}
