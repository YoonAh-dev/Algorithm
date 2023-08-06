//
//  25_석차구하기.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/06.
//

import Foundation

func solution25() {
    let n = Int(readLine()!)!
    var scores = readLine()!.split(separator: " ").map { Int($0)! }
    var ranks = Array(repeating: 0, count: n)
    var rank = 1

    while(rank < n + 1) {
        var cnt = 0
        let max = scores.max()!

        for i in 0..<n {
            if scores[i] == max {
                ranks[i] = rank
                scores[i] = -1
                cnt += 1
            }
        }

        rank += cnt
    }

    ranks.forEach {
        print($0, terminator: " ")
    }
}
