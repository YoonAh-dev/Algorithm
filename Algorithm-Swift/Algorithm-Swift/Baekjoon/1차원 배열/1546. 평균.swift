//
//  1546. 평균.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/10.
//

import Foundation

// Int로 map했을 때, n으로 / 했을 때 12ms가 더 빠름

func calculateFakeAverage() {
    let n = Double(readLine()!)!
    let scores = readLine()!.split(separator: " ").map { Double(String($0))! }
    let M = scores.max()!
    let sum = scores.map { $0 / M * 100 }.reduce(0, +)

    print(sum / n)
}

//calculateFakeAverage()
