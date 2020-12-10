//
//  Pixel.swift
//  EvenMorePixelyFun
//
//  Created by Stuart on 09/12/2020.
//

struct Pixel {
    var r: UInt8
    var g: UInt8
    var b: UInt8
    var a: UInt8 = 255
}

extension Pixel {
    static let clear = Pixel(r: 0, g: 0, b: 0, a: 0)
    static let black = Pixel(r: 0, g: 0, b: 0)
    static let white = Pixel(r: 255, g: 255, b: 255)
    static let gray = Pixel(r: 192, g: 192, b: 192)
    static let red = Pixel(r: 255, g: 0, b: 0)
    static let green = Pixel(r: 0, g: 255, b: 0)
    static let blue = Pixel(r: 0, g: 0, b: 255)
}
