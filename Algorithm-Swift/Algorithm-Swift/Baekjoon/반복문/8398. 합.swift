//
//  8398. 합.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/21.
//

import Foundation

func calculateSum(of number: Int) -> Int {
    return (0...number).reduce(0, +)
}

//let number = Int(readLine()!)!
//print(calculateSum(of: number))
