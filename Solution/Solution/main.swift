//
//  main.swift
//  Solution
//
//  Created by Piotr Sztefko on 10/01/2024.
//

import Foundation

func isSubsequence(_ s: String, _ t: String) -> Bool {
    if s == "" && t == "" {
        return true
    } else if t == "" {
        return false
    } else if s == "" {
        return true
    }

    var s = s.map { $0 }
    var t = t.map { $0 }

    for char in t {
        if char == s[0] {
            s.removeFirst()
            if s.isEmpty {
                return true
            }
        }
    }
    return false
}
