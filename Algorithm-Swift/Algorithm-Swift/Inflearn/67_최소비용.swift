//
//  67_최소비용.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/04.
//

import Foundation

var min67 = 0

func findMinCost(l: Int, n: Int, ch: inout [Int], arr: [[Int]], sum: Int) {
    if l == n {
        if sum < min67 { min67 = sum }
    } else {
        for i in 1...n {
            if ch[i] == 0 && arr[l][i] > 0 {
                ch[i] = 1
                findMinCost(l: i, n: n, ch: &ch, arr: arr, sum: sum + arr[l][i])
                ch[i] = 0
            }
        }
    }
}

func solution67() {
    let nm = readLine()!.split(separator: " ").map { Int($0)! }, n = nm.first!, m = nm.last!
    var arr = Array(repeating: Array(repeating: 0, count: n + 1), count: n + 1)
    var ch = Array(repeating: 0, count: n + 1)
    (0..<m).forEach { _ in
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let row = input[0], col = input[1], cost = input[2]
        arr[row][col] = cost
        min67 += cost
    }

    ch[1] = 1
    findMinCost(l: 1, n: n, ch: &ch, arr: arr, sum: 0)

    print(min67)
}
