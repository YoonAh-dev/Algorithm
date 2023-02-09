//
//  2869. 달팽이는 올라가고 싶다.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/07.
//

import Foundation

func calculateDays(height: Int, day: Int, night: Int) -> Int {
    if (height - night) % (day - night) != 0 {
        return Int((height - night) / (day - night) + 1)
    } else {
        return Int((height - night) / (day - night))
    }
}

//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//print(calculateDays(height: input[2], day: input[0], night: input[1]))
