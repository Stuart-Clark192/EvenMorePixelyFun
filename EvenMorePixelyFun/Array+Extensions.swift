//
//  Array+Extensions.swift
//  EvenMorePixelyFun
//
//  Created by Stuart on 09/12/2020.
//

import Foundation


extension Array {
    
    func rotateBy(positions: Int) -> Array {
        // Check for edge cases
        if positions == 0 || self.count <= 1 {
            return self // The resulting array is similar to the input array
        }

        // Calculate the effective number of rotations
        // -> "positions % length" removes the abs(positions) > n edge case
        // -> "(length + positions % length)" deals with the positions < 0 edge case
        // -> if positions > 0 the final "% length" removes the positions > n edge case
        let length = self.count
        let rotations = (length + positions % length) % length

        // 1. Reverse the whole array
        let reversed: Array = self.reversed()

        // 2. Reverse first positions elements
        let leftPart: Array = reversed[0..<rotations].reversed()

        // 3. Reverse last n-positions elements
        let rightPart: Array = reversed[rotations..<length].reversed()

        return leftPart + rightPart
    }
}
