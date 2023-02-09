//
//  4344. 평균은 넘겠지.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/10.
//

import Foundation

func sayAverage() {
    for _ in 0..<Int(readLine()!)! {
        var input = readLine()!.split(separator: " ").map { Float(String($0))! }
        let num = Int(input.removeFirst())

        print("\(String(format: "%0.3f", calculateAverage(scores: input, num: num)))%")
    }
}

func calculateAverage(scores: [Float], num: Int) -> Float {
    let average = scores.reduce(0, +) / Float(num)
    var count: Float = 0

    scores.forEach {
        if $0 > average { count += 1 }
    }

    return count / Float(num) * 100
}

//sayAverage()
