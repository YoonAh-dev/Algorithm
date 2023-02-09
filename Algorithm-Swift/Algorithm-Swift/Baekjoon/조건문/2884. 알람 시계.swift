//
//  2884. 알람 시계.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/21.
//

import Foundation

func calculate(hour: Int, minute: Int) -> (hour: Int, minute: Int) {
    let calculatedTotalMinute = (hour == 0) ? 24 * 60 + minute - 45 : hour * 60 + minute - 45
    let calculatedHour = (calculatedTotalMinute / 60) % 24
    let calculatedMinute = calculatedTotalMinute % 60

    return (calculatedHour, calculatedMinute)
}

let time = readLine()!.components(separatedBy: " ").map { Int($0)! }
let calculatedTime = calculate(hour: time.first!, minute: time.last!)

// print(calculatedTime.hour, calculatedTime.minute, separator: " ")
