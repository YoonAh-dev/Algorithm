//
//  36_삽입정렬.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/15.
//

import Foundation

func solution36() {
    let n = Int(readLine()!)!
    var nums = readLine()!.split(separator: " ").map { Int($0)! }

    for i in 1..<n {
        for j in stride(from: i, to: 0, by: -1) {
            if nums[j - 1] > nums[j] {
                nums.swapAt(j, j - 1)
            } else {
                break
            }
        }
    }

    nums.forEach { print($0, terminator: " ") }
}
