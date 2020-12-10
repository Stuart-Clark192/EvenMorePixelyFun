//
//  Palette.swift
//  EvenMorePixelyFun
//
//  Created by Stuart on 09/12/2020.
//

import Foundation

struct Palette {
    
    var paletteColours: [Pixel]
}

extension Palette {
    
    static let reds = [Pixel(r: 175, g: 0, b: 0),
                       Pixel(r: 175, g: 0, b: 95),
                       Pixel(r: 175, g: 0, b: 135),
                       Pixel(r: 175, g: 0, b: 175),
                       Pixel(r: 175, g: 0, b: 215),
                       Pixel(r: 175, g: 0, b: 255),
                       Pixel(r: 175, g: 95, b: 0),
                       Pixel(r: 175, g: 95, b: 95),
                       Pixel(r: 175, g: 95, b: 135),
                       Pixel(r: 175, g: 95, b: 175),
                       Pixel(r: 175, g: 95, b: 215),
                       Pixel(r: 175, g: 95, b: 255),
                       Pixel(r: 175, g: 135, b: 0),
                       Pixel(r: 175, g: 135, b: 95),
                       Pixel(r: 175, g: 135, b: 135),
                       Pixel(r: 175, g: 135, b: 175),
                       Pixel(r: 175, g: 135, b: 215),
                       Pixel(r: 175, g: 135, b: 255)]
    
    
    static func produceRedRange() -> [Pixel] {
        
        var reds: [Pixel] = []
        let red = 0...255
        
        for r in red {
            reds.append(Pixel(r: UInt8(r), g: 0, b: 0))
        }
        
        for r in red.reversed() {
            reds.append(Pixel(r: UInt8(r), g: 0, b: 0))
        }
        return reds
    }
}
