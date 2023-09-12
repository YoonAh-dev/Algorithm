//
//  83_복면산.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/12.
//

import Foundation

var arr83 = Array(repeating: 0, count: 101)

func send() -> Int {
    return arr83[6] * 1000 + arr83[1] * 100 + arr83[3] * 10 + arr83[0]
}

func more() -> Int {
    return arr83[2] * 1000 + arr83[4] * 100 + arr83[5] * 10 + arr83[1]
}

func money() -> Int {
    return arr83[2] * 10000 + arr83[4] * 1000 + arr83[3] * 100 + arr83[1] * 10 + arr83[7]
}

func dfs83(l: Int, ch: inout [Int]) {
    if l == 8 {
        if send() + more() == money() {
            if arr83[6] == 0 || arr83[2] == 0 { return }
            print("  ", arr83[6], arr83[1], arr83[3], arr83[0])
            print("+ ", arr83[2], arr83[4], arr83[5], arr83[1])
            print("--------------")
            print(arr83[2], arr83[4], arr83[3], arr83[1], arr83[7])
        }
    } else {
        (0..<10).forEach { i in
            if ch[i] == 0 {
                arr83[l] = i
                ch[i] = 1
                dfs83(l: l + 1, ch: &ch)
                ch[i] = 0
            }
        }
    }
}

func solution83() {
    var ch = Array(repeating: 0, count: 101)
    dfs83(l: 0, ch: &ch)
}
