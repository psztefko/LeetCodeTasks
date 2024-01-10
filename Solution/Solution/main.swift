//
//  main.swift
//  Solution
//
//  Created by Piotr Sztefko on 10/01/2024.
//

import Foundation

func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
    var flowerbed = flowerbed
    var n = n
    var i = 1

    flowerbed.insert(0, at: 0)
    flowerbed.insert(0, at: flowerbed.count)

    while (i < flowerbed.count - 1) && n > 0 {
        if (flowerbed[i - 1] == 0) && (flowerbed[i] == 0) && (flowerbed[i + 1] == 0) {
            flowerbed[i] = 1
            n -= 1
        }
        i += 1
    }

    return (n == 0 ? true : false)
}
