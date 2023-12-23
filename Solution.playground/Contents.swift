import UIKit

func isPalindrome(_ x: Int) -> Bool {
    if String(x) == String(x).reduce("") { "\($1)" + $0 } {
        return true
    }
    return false
}

isPalindrome(121)
