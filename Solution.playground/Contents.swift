import UIKit

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var temp: [Int] = []
    var indexes: [Int] = []

    for (index, num) in nums.enumerated() {
        if temp.contains(num) {
            indexes.insert(index, at: 0)
        } else {
            temp.append(num)
        }
    }
    for index in indexes {
        nums.remove(at: index)
    }
    return nums.count
}

var nums = [0,0,1,1,1,2,2,3,3,4]
removeDuplicates(&nums)
