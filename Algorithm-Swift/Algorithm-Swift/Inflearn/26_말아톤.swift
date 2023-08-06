//
//  26_말아톤.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/06.
//

import Foundation

func solution26() {
    let n = Int(readLine()!)!
    let players = readLine()!.split(separator: " ").map { Int($0)! }
    var ranks = Array(repeating: 0, count: n)

    for i in 0..<n {
        var cnt = 0

        for j in 0..<i {
            if players[j] < players[i] {
                cnt += 1
            }
        }

        ranks[i] = (i + 1) - cnt
    }

    ranks.forEach {
        print($0, terminator: " ")
    }

}
