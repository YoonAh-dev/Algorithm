//
//  10952. A+B-5.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/22.
//

import Foundation

func repeatCalculation10952() {
    while true {
        let numbers = readLine()!.split(separator: " ").map { Int($0)! }

        if numbers.first! == 0 && numbers.last! == 0 {
            break
        }

        let result = plus(first: numbers.first!, last: numbers.last!)
        print(result)
    }
}

//func plus(first: Int, last: Int) -> Int {
//    return first + last
//}
//

//repeatCalculation10952()
