//
//  2738. 행렬 덧셈.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/09.
//

import Foundation

func matrixAddition(row: Int, column: Int) -> [[Int]] {
    var result: [[Int]] = []

    for _ in 0..<row {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        result.append(input)
    }

    for i in 0..<row {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        result[i] = result[i].enumerated().map { $1 + input[$0] }
    }

    return result
}

//let matrix = readLine()!.split(separator: " ").map { Int(String($0))! }
//matrixAddition(row: matrix.first!, column: matrix.last!).forEach {
//    for value in $0 {
//        print(value, terminator: " ")
//    }
//    print("\n", terminator: "")
//}
