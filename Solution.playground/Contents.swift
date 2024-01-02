import UIKit

func isValid(_ s: String) -> Bool {
    guard s.count % 2 == 0 else { return false }
    var stack = [Character]()

    let dict: [Character: Character] = ["(": ")", "{": "}", "[": "]"]

    for char in s {
        switch char {
        case "(", "{", "[": stack.append(char)
        case ")", "}", "]": guard !stack.isEmpty, dict[stack.removeLast()] == char else { return false }
        default: return false
        }
    }
    return stack.isEmpty
}
