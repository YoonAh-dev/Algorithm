//
//  2438. 별 찍기-1.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/21.
//

import Foundation

func printStar(_ count: Int) {
    (1...count).forEach {
        print(String(repeating: "*", count: $0))
    }
}
