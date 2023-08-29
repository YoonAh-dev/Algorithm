//
//  59_부분집합.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/29.
//

import Foundation

func dfs59(l: Int, n: Int, ch: inout [Int]) {
    if l == n {
        ch.enumerated().forEach { index, num in
            if num == 1 {
                print(index + 1, terminator: " ")
            }
        }
        print("")
        return
    } else {
        ch[l] = 1
        dfs59(l: l + 1, n: n, ch: &ch)
        ch[l] = 0
        dfs59(l: l + 1, n: n, ch: &ch)
    }
}

func solution59() {
    let n = Int(readLine()!)!
    var ch = Array(repeating: 0, count: n)
    dfs59(l: 0, n: n, ch: &ch)
}
