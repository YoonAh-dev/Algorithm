//
//  61_특정수만들기.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/30.
//

import Foundation

var cnt61 = 0

func dfs61(l: Int, n: Int, m: Int, sum: Int, arr: [Int]) {
    if l == n {
        if sum == m { cnt61 += 1 }
        return
    } else {
        dfs61(l: l + 1, n: n, m: m, sum: sum, arr: arr)
        dfs61(l: l + 1, n: n, m: m, sum: sum - arr[l], arr: arr)
        dfs61(l: l + 1, n: n, m: m, sum: sum + arr[l], arr: arr)
    }
}

func solution61() {
    let nm = readLine()!.split(separator: " ").map { Int($0)! }, n = nm.first!, m = nm.last!
    let arr = readLine()!.split(separator: " ").map { Int($0)! }
    dfs61(l: 0, n: n, m: m, sum: 0, arr: arr)

    if cnt61 == 0 {
        print("-1")
    } else {
        print(cnt61)
    }
}
