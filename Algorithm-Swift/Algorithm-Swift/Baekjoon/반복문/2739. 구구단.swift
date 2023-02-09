//
//  2739. 구구단.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/21.
//

import Foundation

func printMultiplicationTable(of number: Int) {
    (1...9).forEach {
        print("\(number) * \($0) = \(number * $0)")
    }
}

//let number = Int(readLine()!)!
//printMultiplicationTable(of: number)
