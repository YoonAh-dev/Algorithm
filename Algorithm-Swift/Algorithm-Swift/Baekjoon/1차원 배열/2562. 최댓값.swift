//
//  2562. 최댓값.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/26.
//

import Foundation

func findMax() -> (max: Int, index: Int) {
    var maxNumber: Int = Int(readLine()!)!
    var index: Int = 0
    var targetIndex: Int = 0

    repeat {
        let inputNumber: Int = Int(readLine()!)!

        index += 1

        if maxNumber < inputNumber {
            maxNumber = inputNumber
            targetIndex = index
        }
    } while index != 8

    return (maxNumber, targetIndex + 1)
}

//let maxInfo = findMax()
//print(maxInfo.max, maxInfo.index, separator: "\n")
