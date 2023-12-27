import UIKit


func longestCommonPrefix(_ strings: [String]) -> String {
    guard let firstString = strings.first, !firstString.isEmpty else {
        return ""
    }

    return strings.dropFirst().reduce(firstString) { commonPrefix, nextString in
        String(zip(commonPrefix, nextString).prefix(while: { $0.0 == $0.1 }).map { $0.0 })
    }
}

longestCommonPrefix(["flower","flow","flight"])
