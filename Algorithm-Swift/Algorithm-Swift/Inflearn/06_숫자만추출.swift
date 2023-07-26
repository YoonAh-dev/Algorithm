//
//  06_숫자만추출.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/07/26.
//

import Foundation

func calculateDivisorCount(of num: Int) -> Int {
    var count = 0

    for i in 1...num {
        if num % i == 0 {
            count += 1
        }
    }

    return count
}

func solution06() {
    let str: String = readLine()!
    var result: String = ""

    str.forEach {
        if $0.isNumber {
            result += "\($0)"
        }
    }

    let answer = Int(result)!
    let count = calculateDivisorCount(of: answer)

    print("\(answer)\n\(count)")
}
