//
//  37_LeastRecentlyUsed.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/16.
//

import Foundation

func solution37() {
    let sizes = readLine()!.split(separator: " ").map { Int($0)! }
    let s = sizes.first!
    let nums = readLine()!.split(separator: " ").map { Int($0)! }
    var arr = Array(repeating: 0, count: s)

    nums.forEach { n in
        if arr.contains(n) {
            let index = arr.firstIndex(of: n)!
            for i in stride(from: index - 1, through: 0, by: -1) {
                arr[i + 1] = arr[i]
            }
        } else {
            for i in stride(from: s - 2, through: 0, by: -1) {
                arr[i + 1] = arr[i]
            }
        }

        arr[0] = n
    }

    arr.forEach { print($0, terminator: " ") }
}
