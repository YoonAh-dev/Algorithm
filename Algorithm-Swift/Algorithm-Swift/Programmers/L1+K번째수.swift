//
//  L1+K번째수.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 11/29/23.
//

import Foundation

func sliceArray(_ arr: [Int], i: Int, j: Int) -> [Int] {
    return Array(arr[i...j])
}

func findK(in arr: [Int], k: Int) -> Int {
    let arr = arr.sorted()
    return arr[k-1]
}

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answer: [Int] = []
    for command in commands {
        let subArray = sliceArray(array, i: command[0] - 1, j: command[1] - 1)
        answer.append(findK(in: subArray, k: command[2]))
    }
    return answer
}
