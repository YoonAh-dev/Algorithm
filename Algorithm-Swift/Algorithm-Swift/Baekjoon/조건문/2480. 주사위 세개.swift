//
//  2480. 주사위 세개.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/21.
//

import Foundation

func findCommonElement(dices: [Int]) -> Int {
    let sortedDices = dices.sorted()

    for index in 0..<sortedDices.count - 1 {
        if sortedDices[index] == sortedDices[index + 1] {
            return sortedDices[index]
        }
    }

    return 0
}

func calculatePrize(from dices: [Int]) -> Int {
    let diceSet = Set(dices)

    switch diceSet.count {
    case dices.count:
        return dices.max()! * 100
    case 1:
        return dices.first! * 1000 + 10000
    default:
        let commonElement = findCommonElement(dices: dices)
        return commonElement * 100 + 1000
    }
}

let dices = readLine()!.components(separatedBy: " ").map { Int($0)! }

// print(calculatePrize(from: dices))
