//
//  64_경로탐색.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/02.
//

import Foundation

var cnt64 = 0

func dfs64(l: Int, n: Int, arr: [[Int]], ch: inout [Int]) {
    if l == n {
        cnt64 += 1
        return
    } else {
        for i in 1...n {
            if arr[l][i] == 1 && ch[i] == 0 {
                ch[i] = 1
                dfs64(l: i, n: n, arr: arr, ch: &ch)
                ch[i] = 0
            }
        }
    }
}

func solution64() {
    let nm = readLine()!.split(separator: " ").map { Int($0)! }, n = nm.first!, m = nm.last!
    var arr = Array(repeating: Array(repeating: 0, count: n+1), count: n+1)
    var ch = Array(repeating: 0, count: n+1)
    for _ in 0..<m {
        let input = readLine()!.split(separator: " ").map { Int($0)! }, row = input.first!, col = input.last!
        arr[row][col] = 1
    }

    ch[1] = 1
    dfs64(l: 1, n: n, arr: arr, ch: &ch)

    print(cnt64)
}
