//
//  10_자릿수의합.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/07/28.
//

import Foundation

func digitSum(_ num: Int) -> Int {
    var num = num
    var sum = 0

    while num != 0 {
        sum += num % 10
        num /= 10
    }

    return sum
}

func solution10() {
    let _ = Int(readLine()!)!
    let nums = readLine()!.split(separator: " ").map { Int($0)! }
    var max = -99999999
    var result = 0

    nums.forEach { num in
        let sum = digitSum(num)
        if max < sum {
            max = sum
            result = num
        } else if max == sum && num > result {
            result = num
        }
    }

    print(result)
}
