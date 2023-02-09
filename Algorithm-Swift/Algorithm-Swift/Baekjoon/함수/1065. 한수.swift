//
//  1065. 한수.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/07.
//

import Foundation

func sizeBetween(_ num1: Int, _ num2: Int) -> Int {
    return num2 - num1
}

func isArithmeticalProgression(num: Int) -> Bool {
    let numArray = "\(num)".map { Int(String($0))! }
    var sizeSet: Set<Int> = []

    for i in 0..<numArray.count - 1 {
        let size = sizeBetween(numArray[i], numArray[i + 1])
        sizeSet.insert(size)
    }

    return sizeSet.count == 1
}


func findOneNumber(of number: Int) -> Int {
    var count: Int = 0

    for num in 1...number {
        if num < 100 {
            count += 1
            continue
        }

        if isArithmeticalProgression(num: num) {
            count += 1
        }
    }

    return count
}

// let number = Int(readLine()!)!
// print(findOneNumber(of: number))
