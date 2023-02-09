//
//  3052. 나머지.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/10.
//

import Foundation

func printRemainder() {
    var remainderSet: Set<Int> = []

    for _ in 0..<10 {
        let remainder = Int(readLine()!)! % 42
        remainderSet.insert(remainder)
    }

    print(remainderSet.count)
}

//printRemainder()
