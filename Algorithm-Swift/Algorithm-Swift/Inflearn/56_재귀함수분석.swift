//
//  56_재귀함수분석.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/27.
//

import Foundation

func recursive(cur: Int, n: Int) {
    if cur > n { return }
    print(cur, terminator: " ")
    recursive(cur: cur + 1, n: n)
}

func solution56() {
    let n = Int(readLine()!)!
    recursive(cur: 1, n: n)
}
