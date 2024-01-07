//
//  L4+사칙연산.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 1/7/24.
//

import Foundation

func solution(_ inputArray: [String]) -> Int {
    var totalOperator = inputArray.count / 2 + 1
    var maxArray: [[Int]] = Array(repeating: Array(repeating: -2_147_483_647, count: 101), count: 101)
    var minArray: [[Int]] = Array(repeating: Array(repeating: 2_147_483_647, count: 101), count: 101)
    
    for i in 0..<totalOperator {
        maxArray[i][i] = Int(inputArray[i * 2])!
        minArray[i][i] = Int(inputArray[i * 2])!
    }
    
    for cnt in 1..<totalOperator {
        for i in 0..<totalOperator - cnt {
            let j = i + cnt
            
            for k in i..<j {
                if inputArray[k * 2 + 1] == "+" {
                    maxArray[i][j] = max(maxArray[i][j], maxArray[i][k] + maxArray[k+1][j])
                    minArray[i][j] = min(minArray[i][j], minArray[i][k] + minArray[k+1][j])
                } else {
                    maxArray[i][j] = max(maxArray[i][j], maxArray[i][k] - minArray[k+1][j])
                    minArray[i][j] = min(minArray[i][j], minArray[i][k] - maxArray[k+1][j])
                }
            }
        }
    }

    return maxArray[0][totalOperator - 1]
}
