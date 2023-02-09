//
//  1110. 더하기 사이클.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/22.
//

import Foundation

func generateNumber(of number: Int) -> Int {
    let firstDigit = number % 10
    let firstDigitOfAddedResult = (number / 10 + number % 10) % 10

    return firstDigit * 10 + firstDigitOfAddedResult
}

func addCycle(input: Int) -> Int {
    var tempNumber = input
    var count = 0

    repeat {
        tempNumber = generateNumber(of: tempNumber)
        count += 1
    } while (input != tempNumber)

    return count
}

//let inputNumber = Int(readLine()!)!
//addCycle(input: inputNumber)
