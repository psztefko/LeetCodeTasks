import UIKit

func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var merged = ""

    for (char1, char2) in zip(word1, word2) {
        merged.append(char1)
        merged.append(char2)
    }

    if word1.count < word2.count {
        merged += word2[word1.endIndex...]
    } else {
        merged += word1[word2.endIndex...]
    }

    return merged
}
