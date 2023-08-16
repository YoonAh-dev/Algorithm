//
//  38_InversionSequence.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/16.
//

import Foundation

func solution38() {
    let n = Int(readLine()!)!
    let nums = readLine()!.split(separator: " ").map { Int($0)! }
    var results = Array(repeating: n, count: n)

    for i in 0..<n - 1 {
        var cnt = 0

        for j in 0..<n {
            if results[j] == n && cnt == nums[i] {
                results[j] = i + 1
                break
            }
            if results[j] > i + 1 { cnt += 1 }
        }
    }

    results.forEach { print($0, terminator: " ") }
}
