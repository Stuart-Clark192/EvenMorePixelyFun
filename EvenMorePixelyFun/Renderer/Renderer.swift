//
//  Renderer.swift
//  EvenMorePixelyFun
//
//  Created by Stuart on 09/12/2020.
//

import Foundation

struct Renderer {
    var bitmap = Bitmap(width: 320, height: 200, color: .white)
    
    var palette = Palette.reds
    
    mutating func draw(x: Int, y: Int) {
        bitmap[x, y] = Pixel.blue
    }
    
    mutating func drawNoise() {
        let xrow = 0...bitmap.width - 1
        let yrow = 0...bitmap.height - 1
        
        for x in xrow {
            for y in yrow {
                let randomBit = Int.random(in: 0...1)
                bitmap[x, y] = randomBit == 0 ? Pixel.black : Pixel.white
            }
        }
    }
    
    mutating func drawBars() {
        let xrow = 0...bitmap.width - 1
        let yrow = 0...bitmap.height - 1
        
        for x in xrow {
            for y in yrow {
                let paletteIndex = x % (palette.count - 1)
                bitmap[x, y] = palette[paletteIndex]
            }
        }
    }
    
    mutating func rotatePalette() {
        
        // Increase or decrease the positions to speed up or slow the animation
        // Negative values will rotate left, positive will rotate right
        palette = palette.rotateBy(positions: -5)
    }
    
}
