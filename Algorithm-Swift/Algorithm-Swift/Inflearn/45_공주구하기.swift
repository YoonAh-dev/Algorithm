//
//  45_공주구하기.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/22.
//

import Foundation

func solution45() {
    let nk = readLine()!.split(separator: " ").map { Int($0)! }
    let n = nk.first!, k = nk.last!
    var arr = Array(repeating: 0, count: n)
    var index = 0

    for _ in 0..<n-1 {
        var cnt = 1

        while true {
            if arr[index] == 0 && cnt == k {
                arr[index] = 1
                break
            } else if arr[index] == 1 && cnt == k {
                index += 1
            } else {
                if arr[index] == 0 {
                    index += 1
                    cnt += 1
                } else {
                    index += 1
                }
            }

            if index == n { index = 0 }
        }
    }

    arr.enumerated().forEach { index, num in
        if num == 0 {
            print(index + 1)
            return
        }
    }
}
