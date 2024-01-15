//
//  main.swift
//  Solution
//
//  Created by Piotr Sztefko on 10/01/2024.
//

import Foundation

func increasingTriplet(_ nums: [Int]) -> Bool {
    var i = 1
    var previousValue = nums[0]
    var sequenceLength = 1

    while sequenceLength < 3 && i < nums.count {
        if nums[i] > previousValue {
            sequenceLength += 1
        } else {
            sequenceLength = 1
        }
        previousValue = nums[i]
        i += 1
    }

    return (sequenceLength == 3) ? true : false
}

var nums = [2,1,5,0,4,6]
//var nums = [5,4,3,2,1]
print(increasingTriplet(nums))
