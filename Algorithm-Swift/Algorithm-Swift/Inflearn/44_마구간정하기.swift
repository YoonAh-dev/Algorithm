//
//  44_마구간정하기.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/20.
//

import Foundation

func solution44() {
    let nc = readLine()!.split(separator: " ").map { Int($0)! }
    let n = nc.first!, c = nc.last!
    var arr: [Int] = []
    (0..<n).forEach { _ in
        arr.append(Int(readLine()!)!)
    }
    let sortedArr = arr.sorted()

    var lt = 1, rt = sortedArr.last!, res = 0
    while lt <= rt {
        let mid = (lt + rt) / 2
        var pos = sortedArr[0], cnt = 1

        for i in 1..<n {
            if sortedArr[i] - pos >= mid {
                cnt += 1
                pos = sortedArr[i]
            }
        }

        if cnt >= c {
            lt = mid + 1
            res = mid
        } else {
            rt = mid - 1
        }
    }

    print(res)
}
