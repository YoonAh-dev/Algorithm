//
//  76_이항계수.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/08.
//

import Foundation

func dfs76(n: Int, m: Int, count: Int) -> Int {
    if m == count { return 1 }
    return n * dfs76(n: n - 1, m: m, count: count + 1)
}

func solution76() {
    let nr = readLine()!.split(separator: " ").map { Int($0)! }, n = nr.first!, r = nr.last!
    print(dfs76(n: n, m: r, count: 0) / dfs76(n: r, m: r, count: 0))
}
