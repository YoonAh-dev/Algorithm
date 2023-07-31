//
//  18_층간소음.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/07/31.
//

import Foundation

func solution18() {
    let nm = readLine()!.split(separator: " ").map { Int($0)! }
    let m = nm.last!
    let nums = readLine()!.split(separator: " ").map { Int($0)! }
    var cnt = 0, max = 0

    nums.forEach { num in
        if num > m {
            cnt += 1
            if cnt > max {
                max = cnt
            }
        } else {
            cnt = 0
        }
    }

    print(max)
}
