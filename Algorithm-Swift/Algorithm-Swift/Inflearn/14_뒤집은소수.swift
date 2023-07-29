//
//  14_뒤집은소수.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/07/29.
//

import Foundation

func isPrime2(_ num: Int) -> Bool {
    if num == 1 { return false }

    var cnt = 0

    for i in 1..<num/2+1 {
        if num % i == 0 {
            cnt += 1
        }
    }

    return cnt <= 1 ? true : false
}

func reverse(_ num: Int) -> Int {
    var num = num
    var temp = ""

    while num != 0 {
        temp += "\(num % 10)"
        num /= 10
    }

    return Int(temp)!
}

func solution14() {
    let _ = Int(readLine()!)!
    let nums = readLine()!.split(separator: " ").map { Int($0)! }
    var reverses = ""

    nums.forEach {
        let reverseNum = reverse($0)
        if isPrime2(reverseNum) {
            reverses += "\(reverseNum) "
        }
    }

    print(reverses)
}
