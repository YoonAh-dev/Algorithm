//
//  25305. 커트라인.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/16.
//

import Foundation

func cutline(N: Int, k: Int) -> Int {
    let scores = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

    return scores[N - k]
}

//let input = readLine()!.split(separator: " ").map { Int($0)! }
//print(cutline(N: input.first!, k: input.last!))
