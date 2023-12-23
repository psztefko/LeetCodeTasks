import UIKit

func isPalindrome(_ x: Int) -> Bool {
    func checkPalindrome(_ x: Int) -> Bool {
        return String(x) == String(x).reduce("") { "\($1)" + $0 }
    }
    return x < 0 || (x % 10 == 0 && x != 0) ? false : checkPalindrome(x)
}
