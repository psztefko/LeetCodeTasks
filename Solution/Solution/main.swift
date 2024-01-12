//
//  main.swift
//  Solution
//
//  Created by Piotr Sztefko on 10/01/2024.
//

import Foundation

let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

func reverseVowels(_ s: String) -> String {
    var vowelsInString: [Character] = []
    var vowelsIndexes: [Int] = []
    var result = s.map { $0 }

    for (index, char) in s.enumerated() {
        if vowels.contains(char) {
            vowelsInString.append(char)
            vowelsIndexes.append(index)
        }
    }

    for (i, vowel) in vowelsIndexes.enumerated() {
        result[vowelsIndexes[i]] = vowelsInString.reversed()[i]
    }

    return String(result)
}

print(reverseVowels("aA"))
