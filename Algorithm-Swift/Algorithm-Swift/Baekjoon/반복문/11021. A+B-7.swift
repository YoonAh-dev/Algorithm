//
//  11021. A+B-7.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/21.
//

import Foundation

func repeatCalculation11021(times: Int) {
    for index in 0..<times {
        let numbers = readLine()!.split(separator: " ").map { Int($0)! }
        let result = plus(first: numbers.first!, last: numbers.last!)

        print("Case #\(index + 1):", result)
    }
}

//func plus(first: Int, last: Int) -> Int {
//    return first + last
//}
//
//let times = Int(readLine()!)!
//repeatCalculation11021(times: times)
