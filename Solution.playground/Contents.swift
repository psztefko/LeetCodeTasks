import UIKit

func gcdOfStrings(_ str1: String, _ str2: String) -> String {
    var short: [String.Element]
    var long: [String.Element]

    if str1.count <= str2.count {
        short = Array(str1)
        long = Array(str2)
    } else {
        short = Array(str2)
        long = Array(str1)
    }

    return ""
}

gcdOfStrings("ABCABC", "ABC")
