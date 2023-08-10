//
//  33_3등의성적은.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/10.
//

import Foundation

func solution33() {
    let _ = readLine()
    var nums = readLine()!.split(separator: " ").map { Int($0)! }
    let numSet = Set(nums)
    nums = Array(numSet)

    for i in 0..<nums.count-1 {
        var minIndex = i

        for j in i..<nums.count {
            if nums[minIndex] > nums[j] {
                minIndex = j
            }
        }

        nums.swapAt(i, minIndex)
    }

    if nums.count >= 3 {
        print(nums[nums.count - 3])
    }

}
