//
//  5622. 다이얼.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/07.
//

import Foundation

func dialMinimumTime(of string: String) -> Int {
    var totalTime: Int = 0

    string.forEach {
        totalTime += additionalTime(of: $0)
    }

    return totalTime
}

func additionalTime(of alphabet: Character) -> Int {
    switch alphabet {
    case "A", "B", "C": return 3
    case "D", "E", "F": return 4
    case "G", "H", "I": return 5
    case "J", "K", "L": return 6
    case "M", "N", "O": return 7
    case "P", "Q", "R", "S": return 8
    case "T", "U", "V": return 9
    case "W", "X", "Y", "Z": return 10
    default: return 0
    }
}

//let dialString = readLine()!
//print(dialMinimumTime(of: dialString))
