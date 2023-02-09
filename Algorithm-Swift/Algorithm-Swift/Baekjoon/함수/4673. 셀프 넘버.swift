//
//  4673. 셀프 넘버.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/07.
//

import Foundation

func sum(of number: Int) -> Int {
    return number + sumOfEachDigit(of: number)
}

func sumOfEachDigit(of number: Int) -> Int {
    var sum: Int = 0

    "\(number)".map { Int(String($0))! }.forEach { sum += $0 }

    return sum
}

func findSelfNumber() {
    var numberSet: Set<Int> = []

    for i in 1...10000 {
        numberSet.insert(sum(of: i))
    }

    for i in 1...10000 {
        if !numberSet.contains(i) {
            print(i)
        }
    }
}

// findSelfNumber()
