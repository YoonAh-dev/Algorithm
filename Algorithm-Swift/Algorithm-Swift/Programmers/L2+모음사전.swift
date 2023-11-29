//
//  L2+모음사전.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 11/29/23.
//

import Foundation

var combination: [String] = []

func findWord(_ level: Int, _ word: String) {
    if level == 5 {
        combination.append(word)
    } else {
        ["", "A", "E", "I", "O", "U"].forEach {
            findWord(level + 1, word + $0)
        }
    }
}

func solution(_ word: String) -> Int {
    findWord(0, "")
    
    let sortedCombination = Set(combination).sorted().filter { $0 != "" }
    return sortedCombination.firstIndex(of: word)! + 1
}
