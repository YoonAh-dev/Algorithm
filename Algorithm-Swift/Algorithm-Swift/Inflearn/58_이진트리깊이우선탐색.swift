//
//  58_이진트리깊이우선탐색.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/28.
//

import Foundation

func dfs58(n: Int, m: Int) {
    if n > m { return }

    dfs58(n: n * 2, m: m)
    dfs58(n: n * 2 + 1, m: m)
    print(n, terminator: " ")
}

func solution58() {
    let n = Int(readLine()!)!
    dfs58(n: 1, m: n)
}
