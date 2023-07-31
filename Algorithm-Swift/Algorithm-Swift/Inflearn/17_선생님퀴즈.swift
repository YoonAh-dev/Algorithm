//
//  17_선생님퀴즈.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/07/31.
//

import Foundation

func add(_ num: Int) -> Int {
    return (1...num).reduce(0, +)
}

func solution17() {
    let n = Int(readLine()!)!

    for _ in 0..<n {
        let nums = readLine()!.split(separator: " ").map { Int($0)! }
        let num = nums.first!
        let answer = nums.last!

        if answer == add(num) {
            print("YES")
        } else {
            print("NO")
        }
    }
}
