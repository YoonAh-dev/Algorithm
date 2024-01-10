//
//  L3+단어변환.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 1/9/24.
//

import Foundation

var check: [Bool] = [], wordStorage: [[String]] = []
var res = 2_147_000_000

func dfs(_ word: String, _ target: String, _ cnt: Int) {
    if word == target { if res > cnt { res = cnt } }
    else {
        let splitedWord: [String] = word.map { String($0) }
        
        for i in wordStorage.indices {
            var diff: Int = 0
            if check[i] == true { continue }
            
            for j in wordStorage[i].indices {
                if wordStorage[i][j] != splitedWord[j] { diff += 1 }
            }
            
            if diff == 1 {
                check[i] = true
                dfs(wordStorage[i].joined(), target, cnt + 1)
                check[i] = false
            }
        }
    }
}

func solution(_ begin: String, _ target: String, _ words: [String]) -> Int {
    check = Array(repeating: false, count: words.count)
    wordStorage = words.map { $0.map { String($0) } }
    
    dfs(begin, target, 0)
    
    if res == 2_147_000_000 { return 0 }
    else { return res }
}

let val: [String: Int] = []
val.sorted(by: <#T##((key: String, value: Int), (key: String, value: Int)) throws -> Bool#>)
