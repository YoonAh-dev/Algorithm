//
//  9498. 시험성적.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/21.
//

import Foundation

func calculate(score: Int) -> Character {
    switch score {
    case 90...100:
        return "A"
    case 80...89:
        return "B"
    case 70...79:
        return "C"
    case 60...69:
        return "D"
    default:
        return "F"
    }
}

let score = Int(readLine()!)!
//print(calculate(score: score))
