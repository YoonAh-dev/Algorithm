//
//  43_뮤직비디오.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/20.
//

import Foundation

func solution43() {
    let nm = readLine()!.split(separator: " ").map { Int($0)! }
    let n = nm.first!, m = nm.last!
    let arr = readLine()!.split(separator: " ").map { Int($0)! }
    var lt = 1, rt = arr.reduce(0, +), res = lt

    while lt <= rt {
        let mid = (lt + rt) / 2
        var total = 0, cnt = 0, i = 0

        for i in 0..<n {
            if total + arr[i] > mid {
                total = arr[i]
                cnt += 1
            } else {
                total += arr[i]
            }
        }

        if total > 0 { cnt += 1 }

        if cnt <= m && mid >= arr.max()! {
            rt = mid - 1
            res = mid
        } else { lt = mid + 1 }
    }

    print(res)
}
