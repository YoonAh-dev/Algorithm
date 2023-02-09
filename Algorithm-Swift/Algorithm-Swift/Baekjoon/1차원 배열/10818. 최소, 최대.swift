//
//  10818. 최소, 최대.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/26.
//

import Foundation

func findMinMax(total: Int) -> (min: Int, max: Int){
    let inputNumbers = readLine()!.split(separator: " ").map { Int($0)! }
    let sortedNumbers = inputNumbers.sorted()

    return (sortedNumbers.first!, sortedNumbers.last!)
}

//let number = Int(readLine()!)!
//let numbers = findMinMax(total: number)
//print(numbers.min, numbers.max)
