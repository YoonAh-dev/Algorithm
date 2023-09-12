//
//  84_휴가.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/12.
//

import Foundation

var max84 = 0

func dfs84(l: Int, n: Int, sum: Int, pair: [(take: Int, pay: Int)]) {
    if l >= n {
        if sum > max84 { max84 = sum }
    } else {
        if n - l >= pair[l].take {
            dfs84(l: l + pair[l].take, n: n, sum: sum + pair[l].pay, pair: pair)
        }
        dfs84(l: l + 1, n: n, sum: sum, pair: pair)
    }
}

func solution84() {
    let n = Int(readLine()!)!
    var pair: [(Int, Int)] = []
    (0..<n).forEach { _ in
        let input = readLine()!.split(separator: " ").map { Int($0)! }, t = input.first!, p = input.last!
        pair.append((t, p))
    }

    dfs84(l: 0, n: n, sum: 0, pair: pair)
    print(max84)
}
