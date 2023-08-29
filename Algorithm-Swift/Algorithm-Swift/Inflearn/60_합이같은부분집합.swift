//
//  60_합이같은부분집합.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/29.
//

import Foundation

var flag60 = false

func dfs60(l: Int, n: Int, arr: [Int], ch: inout [Int]) {
    if l == n {
        var sum1 = 0, sum2 = 0
        ch.enumerated().forEach { index, num in
            if num == 0 { sum1 += arr[index] }
            else { sum2 += arr[index] }
        }
        if sum1 == sum2 { flag60 = true }
        return
    } else {
        ch[l] = 1
        dfs60(l: l + 1, n: n, arr: arr, ch: &ch)
        ch[l] = 0
        dfs60(l: l + 1, n: n, arr: arr, ch: &ch)
    }
}

func solution60() {
    let n = Int(readLine()!)!
    let arr = readLine()!.split(separator: " ").map { Int($0)! }
    var ch = Array(repeating: 0, count: n)
    dfs60(l: 0, n: n, arr: arr, ch: &ch)

    if flag60 { print("YES") }
    else { print("NO") }
}
