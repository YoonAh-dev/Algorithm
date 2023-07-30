//
//  15_소수의개수.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/07/30.
//

import Foundation

func solution15() {
    let n = Int(readLine()!)!
    var arr = Array(repeating: 1, count: n + 1)
    var cnt = 0

    for i in 2...n/2 {
        if arr[i] == 1 {
            for j in stride(from: i + i, through: n, by: i) {
                arr[j] = 0
            }
        }
    }

    for i in 2...n {
        if arr[i] == 1 {
            cnt += 1
        }
    }

    print(cnt)
}
