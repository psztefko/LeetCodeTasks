//
//  main.swift
//  Solution
//
//  Created by Piotr Sztefko on 10/01/2024.
//

import Foundation

func productExceptSelf(_ nums: [Int]) -> [Int] {
    var result: [Int] = []

    for index in 0..<nums.count {
        var tempNums = nums
        var temp = tempNums.remove(at: index)
        result.append(tempNums.reduce(1) { $0 * $1 })
    }

    return result
}

//var nums = [1,2,3,4]
var nums = [-1,1,0,-3,3]
print(productExceptSelf(nums))
