//
//  2525. 오븐 시계.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/21.
//

import Foundation

func calculate(hour: Int, minute: Int, requiredTime: Int) -> (hour: Int, minute: Int) {
    let calculatedTotalMinute = (hour == 0) ? 24 * 60 + minute + requiredTime : hour * 60 + minute + requiredTime
    let calculatedHour = (calculatedTotalMinute / 60) % 24
    let calculatedMinute = calculatedTotalMinute % 60

    return (calculatedHour, calculatedMinute)
}

let currentTime = readLine()!.components(separatedBy: " ").map { Int($0)! }
let requiredTime = Int(readLine()!)!
let endTime = calculate(hour: currentTime.first!, minute: currentTime.last!, requiredTime: requiredTime)

// print(endTime.hour, endTime.minute, separator: " ")
