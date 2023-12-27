import UIKit


func longestCommonPrefix(_ strings: [String]) -> String {
    var commonPrefix = ""
    var flag = true

    strings[0].forEach { char in
        var char = String(char)
        if strings.allSatisfy { $0.hasPrefix(char) } {
            commonPrefix += char
        } else {
            flag = false
        }
    }

    return commonPrefix
}

longestCommonPrefix(["flower","flow","flight"])
