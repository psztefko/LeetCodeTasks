//
//  main.swift
//  Solution
//
//  Created by Piotr Sztefko on 10/01/2024.
//

import Foundation

func compress(_ chars: inout [Character]) -> Int {
    var tempArray: [Character] = []
    var currentChar: Character = chars[0]
    var currentCount: Int = 0

    for char in chars {
        if char != currentChar && currentCount > 0 {
            tempArray.append(currentChar)
            if currentCount > 1 {
                tempArray.append(Character(String((currentCount))))
            }
            currentChar = char
            currentCount = 1
        } else {
            currentCount += 1
        }
    }
    tempArray.append(currentChar)
    tempArray.append(Character(String((currentCount))))

    chars = tempArray
    return chars.count
}

var chars: [Character] = ["a","a","b","b","c","c","c"]
compress(&chars)
print(chars)
//Output: Return 6, and the first 6 characters of the input array should be: ["a","2","b","2","c","3"]
//Explanation: The groups are "aa", "bb", and "ccc". This compresses to "a2b2c3".
