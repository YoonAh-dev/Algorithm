//
//  TimeMeasure.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/03/25.
//

import Foundation

func measureTime(_ closure: () -> ()) -> TimeInterval {
    let startDate = Date()
    closure()
    return Date().timeIntervalSince(startDate)
}
