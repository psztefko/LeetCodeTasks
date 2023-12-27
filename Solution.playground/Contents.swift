import UIKit

let symbolsDict: [Character:Int] = [
    "I": 1,
    "V": 5,
    "X": 10,
    "L": 50,
    "C": 100,
    "D": 500,
    "M": 1000
]

func romanToInt(_ s: String) -> Int {
    var finalInt = 0, previousValue = 0

    for char in s {
        if let currentValue = symbolsDict[char] {
            finalInt += currentValue <= previousValue ? previousValue : -previousValue
            previousValue = currentValue
        }
    }
    finalInt += previousValue

    return finalInt
}
