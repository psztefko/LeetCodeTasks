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

    var longestSubsequence = ""
    var currentLongestSubsequence = ""

    for i in 0...long.count - 1 {
        var sequenceStreak = true
        for j in 0...short.count - 1 {
            if i + j < long.count {
                if long[i + j] == short[j] {
                    if sequenceStreak {
                        currentLongestSubsequence.append(short[j])
                    }

                } else {
                    sequenceStreak = false
                }
            }
            if currentLongestSubsequence.count == short.count {
                return currentLongestSubsequence
            }

            if currentLongestSubsequence.count > longestSubsequence.count {
                longestSubsequence = currentLongestSubsequence
            }
        }
    }

    return longestSubsequence
}

gcdOfStrings("ABCABC", "ABC")
