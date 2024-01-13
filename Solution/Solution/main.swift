//
//  main.swift
//  Solution
//
//  Created by Piotr Sztefko on 10/01/2024.
//

import Foundation

func reverseWords(_ s: String) -> String {
    var result = s.split(separator: " ")
    return result.reversed().joined(separator: " ")
}
