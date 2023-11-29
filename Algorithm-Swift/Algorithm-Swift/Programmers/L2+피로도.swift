//
//  L2+피로도.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 11/29/23.
//

import Foundation

var maxN: Int = 0
var check: [Int] = Array(repeating: 0, count: 8)

func travel(_ result: Int, _ k: Int, _ dungeons: [[Int]]) {
    for (index, dungeon) in dungeons.enumerated() {
        if k >= dungeon[0] && check[index] == 0 {
            check[index] = 1
            travel(result+1, k-dungeon[1], dungeons)
            check[index] = 0
        }
    }
    
    if maxN < result { maxN = result }
}

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    let dungeons = dungeons.sorted(by: {
        return ($0[0] - $0[1]) > ($1[0] - $1[1])
    })
    travel(0, k, dungeons)
    return maxN
}
