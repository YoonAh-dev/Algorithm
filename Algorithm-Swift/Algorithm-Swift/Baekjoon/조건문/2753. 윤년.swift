//
//  2753. 윤년.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/21.
//

import Foundation

extension Int {
    var isLeapYear: Int {
        return ((self % 4 == 0 && self % 100 != 0) || self % 400 == 0) ? 1 : 0
    }
}

// print(Int(readLine()!)!.isLeapYear)
