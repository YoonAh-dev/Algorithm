//
//  11720. 숫자의 합.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/07.
//

import Foundation

func printSumOf(total: Int) {
    let numbers = readLine()!.map { Int(String($0))! }.reduce(0, +)

    print(numbers)
}

//let total = Int(readLine()!)!
//printSumOf(total: total)
