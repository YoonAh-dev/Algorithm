//
//  8958. OX퀴즈.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/10.
//

import Foundation

func calculateOXScore() {
    for _ in 0..<Int(readLine()!)! {
        let ox = readLine()!
        var count: Int = 0
        var sum: Int = 0

        ox.forEach {
            if $0 == "X" {
                count = 0
            } else {
                count += 1
                sum += count
            }
        }

        print(sum)
    }
}

//calculateOXScore()

// "X"로 split를 한 뒤에 $0.count * ($0.count + 1) / 2 식으로 계산

//let n = Int(readLine()!)!
//
//(1...n).forEach {_ in
//    let target = readLine()!.split(separator: "X").map { $0.count * ($0.count + 1) / 2 }
//    let score = target.reduce(0, +)
//    print(score)
//}
