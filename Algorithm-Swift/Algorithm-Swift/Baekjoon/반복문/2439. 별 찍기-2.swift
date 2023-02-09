//
//  2439. 별 찍기-2.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/22.
//

import Foundation

func printStar2(_ count: Int) {
    (1...count).forEach {
        print(String(repeating: " ", count: count - $0) + String(repeating: "*", count: $0))
    }
}
