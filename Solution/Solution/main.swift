//
//  main.swift
//  Solution
//
//  Created by Piotr Sztefko on 10/01/2024.
//

import Foundation

func increasingTriplet(_ nums: [Int]) -> Bool {
    var small = Int.max
    var medium = Int.max

    for num in nums {
        if num <= small {
            small = num
        } else if num <= medium {
            medium = num
        } else if num > medium {
            return true
        }
    }
    return false
}
