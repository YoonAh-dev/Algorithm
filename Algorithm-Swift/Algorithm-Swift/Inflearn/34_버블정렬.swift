//
//  34_버블정렬.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/10.
//

import Foundation

func solution34() {
    let n = Int(readLine()!)!
    var nums = readLine()!.split(separator: " ").map { Int($0)! }

    for i in stride(from: n, to: 0, by: -1) {
        for j in stride(from: 0, to: i - 1, by: 1) {
            if nums[j] > nums[j + 1] {
                nums.swapAt(j, j + 1)
            }
        }
    }

    nums.forEach {
        print($0, terminator: " ")
    }
}
