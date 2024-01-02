import UIKit


func longestCommonPrefix(_ strings: [String]) -> String {
    return strings.lazy.reduce(strings[0]) { commonPrefix, nextString in
        String(zip(commonPrefix, nextString).prefix(while: {
            $0.0 == $0.1
        }).map { $0.0 })
    }
}

longestCommonPrefix(["flower","flow","flight"])
