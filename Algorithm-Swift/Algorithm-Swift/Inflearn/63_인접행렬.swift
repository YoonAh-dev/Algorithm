//
//  63_인접행렬.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/02.
//

import Foundation

func solution63() {
    let nm = readLine()!.split(separator: " ").map { Int($0)! }, n = nm.first!, m = nm.last!
    var arr = Array(repeating: Array(repeating: 0, count: n), count: n)
    for _ in 0..<m {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let row = input.first!, col = input[1], cost = input.last!
        arr[row - 1][col - 1] = cost
    }

    arr.forEach {
        $0.forEach { print($0, terminator: " ") }
        print("")
    }
}
