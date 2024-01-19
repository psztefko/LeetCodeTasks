//
//  main.swift
//  Solution
//
//  Created by Piotr Sztefko on 10/01/2024.
//

import Foundation

func moveZeroes(_ nums: inout [Int]) {
    var lastNum = 0
    for index in 0..<nums.count {
        if nums[index] != 0 {
            nums.swapAt(lastNum, index)
            lastNum += 1
        }
    }
}
