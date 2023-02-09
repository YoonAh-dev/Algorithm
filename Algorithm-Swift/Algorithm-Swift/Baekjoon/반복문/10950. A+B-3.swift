//
//  10950. A+B-3.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/21.
//

import Foundation

func repeatCalculation(times: Int) {
    for _ in 0..<times {
        let numbers = readLine()!.split(separator: " ").map { Int($0)! }
        let result = plus(first: numbers.first!, last: numbers.last!)

        print(result)
    }
}

//func plus(first: Int, last: Int) -> Int {
//    return first + last
//}

//let times = Int(readLine()!)!
//repeatCalculation(times: times)
