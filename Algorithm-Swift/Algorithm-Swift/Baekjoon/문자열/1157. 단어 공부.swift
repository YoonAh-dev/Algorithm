//
//  1157. 단어 공부.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/07.
//

import Foundation

func mostFrequentlyMentionedWord(of string: String) -> String {
    var alphabets: [Int] = Array(repeating: 0, count: 26)

    string.lowercased().forEach {
        let index: Int = Int($0.asciiValue!) - 97
        alphabets[index] += 1
    }

    let maxCount = alphabets.max()!
    let maxArray = alphabets.filter { $0 == maxCount }

    if maxArray.count == 1 {
        let index = alphabets.firstIndex(of: maxCount)! + 65
        return String(UnicodeScalar(index)!)
    }

    return "?"
}

//print(mostFrequentlyMentionedWord(of: readLine()!))
