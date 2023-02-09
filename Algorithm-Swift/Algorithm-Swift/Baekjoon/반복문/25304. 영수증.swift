//
//  25304. 영수증.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/21.
//

import Foundation

func compare2(_ totalAmount: Int, to itemCount: Int) -> String {
    var sum: Int = 0

    for _ in 0..<itemCount {
        let amount = calculateItemAmount()
        sum += amount
    }

    return sum == totalAmount ? "Yes" : "No"
}

func calculateItemAmount() -> Int {
    let itemInformation = readLine()!.split(separator: " ").map { Int($0)! }
    return itemInformation.first! * itemInformation.last!
}

//let totalAmount = Int(readLine()!)!
//let itemCount = Int(readLine()!)!
//
//print(compare2(totalAmount, to: itemCount))
