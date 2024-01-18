//
//  main.swift
//  Solution
//
//  Created by Piotr Sztefko on 10/01/2024.
//

import Foundation

func compress(_ chars: inout [Character]) -> Int {
    var tempString = ""
    var currentCount = 1

    for i in 1..<chars.count {
        if chars[i] == chars[i - 1] {
            currentCount += 1
        } else {
            tempString += "\(chars[i - 1])" + (currentCount > 1 ? "\(currentCount)" : "")
            currentCount = 1
        }
    }
    tempString += "\(chars.last!)" + (currentCount > 1 ? "\(currentCount)" : "")
    chars = Array(tempString)
    return chars.count
}
