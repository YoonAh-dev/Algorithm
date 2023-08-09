//
//  32_선택정렬.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/09.
//

import Foundation

func solution32() {
    let _ = Int(readLine()!)!
    var nums = readLine()!.split(separator: " ").map { Int($0)! }

    for i in 0..<nums.count - 1 {
        var min = nums[i]
        var temp = i

        for j in i..<nums.count {
            if min > nums[j] {
                min = nums[j]
                temp = j
            }
        }

        nums.swapAt(i, temp)
    }

    nums.forEach { print($0, terminator: " ") }
}
