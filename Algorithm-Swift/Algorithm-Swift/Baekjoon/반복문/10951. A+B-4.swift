//
//  10951. A+B-4.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/22.
//

import Foundation

func repeatCalculation10951() {
    while let numbers = readLine() {
        let splitedNumbers = numbers.split(separator: " ").map { Int($0)! }

        let result = plus(first: splitedNumbers.first!, last: splitedNumbers.last!)
        print(result)
    }
}

//func plus(first: Int, last: Int) -> Int {
//    return first + last
//}


//repeatCalculation10951()
