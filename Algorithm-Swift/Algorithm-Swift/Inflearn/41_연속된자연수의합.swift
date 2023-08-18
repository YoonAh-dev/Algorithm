//
//  41_연속된자연수의합.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/18.
//

import Foundation

func solution41() {
    let num = Int(readLine()!)!
    var total = 2, cnt = 0

    for i in stride(from: num / 2, through: 1, by: -1) {
        var sum = 0
        var temp = i
        var nums: [Int] = []

        for _ in 0..<total {
            nums.append(temp)
            sum += temp
            temp += 1
        }

        if sum < num {
            total += 1
        } else if sum == num {
            print("\(nums[0])", terminator: " ")
            for j in 1..<nums.count { print("+ \(nums[j])", terminator: " ") }
            print("= \(num)")
            cnt += 1
        }
    }

    print(cnt)

}
