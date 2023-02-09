//
//  10871. X보다 작은 수.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/23.
//

import Foundation

func findNumbers(totalNumber: Int, targetNumber: Int) -> String {
    let inputNumbers = readLine()!.split(separator: " ").map { Int($0)! } // filter 써서 받기
    var minNumbers: [String] = []

    inputNumbers.forEach {
        if $0 < targetNumber {
            minNumbers.append(String($0))
        }
    }

    return minNumbers.joined(separator: " ")
}

//let inputNumbers = readLine()!.split(separator: " ").map { Int($0)! }
//print(findNumbers(totalNumber: inputNumbers.first!, targetNumber: inputNumbers.last!))
