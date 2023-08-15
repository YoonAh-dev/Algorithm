//
//  35_SpecialSort.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/15.
//

import Foundation

func solution35() {
    let _ = readLine()
    var nums = readLine()!.split(separator: " ").map { Int($0)! }

    for (i, num) in nums.enumerated() {
        if num < 0 {
            for j in stride(from: i, to: 0, by: -1) {
                if nums[j - 1] < 0 { break }

                nums.swapAt(j, j - 1)
            }
        }
    }

    nums.forEach { print($0, terminator: " ") }
}
