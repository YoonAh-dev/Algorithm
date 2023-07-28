//
//  11_숫자의총개수.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/07/28.
//

import Foundation

func calculateDigit(_ num: Int) -> Int {
    var num = num
    var count = 0

    while num != 0 {
        num /= 10
        count += 1
    }

    return count
}

func solution11() {
    let num = Int(readLine()!)!
    let digit = calculateDigit(num)
    var sum: Int = 0

    for i in 0..<digit {
        if i != digit - 1 {
            let firstPow = Int(pow(Double(10), Double(i + 1)))
            let secondPow = Int(pow(Double(10), Double(i)))
            sum += (firstPow - secondPow) * (i + 1)
        } else {
            let powNum = Int(pow(Double(10), Double(i)))
            sum += (num - powNum + 1) * (i + 1)
        }
    }

    print(sum)
}
