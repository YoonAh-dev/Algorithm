//
//  2587. 대표값2.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/16.
//

import Foundation

func centralValue() {
    var inputArray: [Int] = []

    for _ in 0..<5 {
        inputArray.append(Int(readLine()!)!)
    }

    print(mean(of: inputArray))
    print(median(of: inputArray))
}

func mean(of array: [Int]) -> Int {
    return array.reduce(0, +) / array.count
}

func median(of array: [Int]) -> Int {
    return array.sorted()[array.count / 2]
}

//centralValue()
