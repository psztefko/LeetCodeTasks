import UIKit

func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    return candies.compactMap { $0 + extraCandies >= candies.max()! }
}
