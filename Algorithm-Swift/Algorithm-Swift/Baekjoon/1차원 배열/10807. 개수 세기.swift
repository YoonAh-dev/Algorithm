//
//  10807. 개수 세기.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/23.
//

import Foundation

func receiveNumber(for number: Int) -> Int {
    let inputNumbers = readLine()!.split(separator: " ").map { Int($0)! }
    let sortedNumbers = inputNumbers.sorted()
    var counter: Int = 0

    let numberToFind = Int(readLine()!)!

    for number in sortedNumbers {
        if number > numberToFind {
            break
        } else if number == numberToFind {
            counter += 1
        }
    }

    return counter
}

//let times = Int(readLine()!)!
//receiveNumber(for: times)
