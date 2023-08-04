//
//  23_연속부분증가수열.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/04.
//

import Foundation

func solution23() {
    let n = Int(readLine()!)!
    let nums = readLine()!.split(separator: " ").map { Int($0)! }
    var cnt = 0, max = 0

    for i in stride(from: 0, to: n-1, by: 1) {
        if nums[i+1] - nums[i] >= 0 {
            cnt += 1
            if cnt > max {
                max = cnt
            }
        } else {
            cnt = 0
        }
    }

    if max == 0 {
        print(max)
    } else {
        print(max + 1)
    }
}
