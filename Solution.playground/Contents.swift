import UIKit

func lengthOfLastWord(_ s: String) -> Int {
    var separated = s.split(separator: " ")
    return separated.last?.count ?? 0
}
