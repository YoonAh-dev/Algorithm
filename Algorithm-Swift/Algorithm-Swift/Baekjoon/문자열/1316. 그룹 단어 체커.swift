//
//  1316. 그룹 단어 체커.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/07.
//

import Foundation

func countGroupWord() -> Int {
    let totalCount = Int(readLine()!)!
    var wordCount: Int = 0

    for _ in 0..<totalCount {
        let word = readLine()!.map { String($0) }

        if hasGroupWord(in: word) {
            wordCount += 1
        }
    }

    return wordCount
}

func hasGroupWord(in word: [String]) -> Bool {
    guard word.count > 1 else { return true }
    var wordSet: Set<String> = [word.first!]
    var flag: Bool = true

    for i in 1..<word.count {
        if word[i] == word[i - 1] { continue }
        
        if wordSet.contains(word[i]) {
            flag = false
        } else {
            wordSet.insert(word[i])
        }
    }

    return flag
}

//print(countGroupWord())
