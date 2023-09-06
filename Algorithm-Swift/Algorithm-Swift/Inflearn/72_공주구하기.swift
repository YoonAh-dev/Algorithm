//
//  72_공주구하기.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/06.
//

import Foundation

func solution72() {
    let nk = readLine()!.split(separator: " ").map { Int($0)! }, n = nk.first!, k = nk.last!
    var Q: [Int] = Array(1...n)

    while Q.count > 1 {
        for _ in 0..<k-1 {
            let x = Q.removeFirst()
            Q.append(x)
        }
        Q.removeFirst()
    }

    print(Q.first!)
}
