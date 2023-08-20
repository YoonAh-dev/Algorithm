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

        while i < n {
            total += arr[i]

            if total == mid {
                total = 0; cnt += 1; i += 1
            } else if total > mid {
                total = 0; cnt += 1
            } else {
                i += 1
            }
        }

        if total > 0 { cnt += 1 }

        if cnt > m { lt = mid + 1 }
        else if cnt <= m {
            rt = mid - 1
            res = mid
        }
    }

    print(res)
}
