//
//  24_JollyJumpers.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/04.
//

import Foundation

func solution24() {
    let n = Int(readLine()!)!
    let nums = readLine()!.split(separator: " ").map { Int($0)! }
    var jumpers = Array(repeating: 0, count: n)

    for i in stride(from: 0, to: n-1, by: 1) {
        let result = abs(nums[i+1] - nums[i])
        if result > 0 && result < n {
            jumpers[result] = 1
        } else {
            print("NO")
            return
        }
    }

    for i in 1..<n {
        if jumpers[i] == 0 {
            print("NO")
            return
        }
    }

    print("YES")
}
