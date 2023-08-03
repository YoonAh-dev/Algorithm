//
//  22_온도의최대값.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/03.
//

import Foundation

func solution22() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let temps = readLine()!.split(separator: " ").map { Int($0)! }
    let days = input.first!
    let continuousDay = input.last!
    var sum = 0, max = 0

    for i in 0..<continuousDay {
        sum += temps[i]
        max += temps[i]
    }

    for i in stride(from: continuousDay, to: days, by: 1) {
        sum += temps[i] - temps[i - continuousDay]
        if sum > max {
            max = sum
        }
    }

    print(max)

}
