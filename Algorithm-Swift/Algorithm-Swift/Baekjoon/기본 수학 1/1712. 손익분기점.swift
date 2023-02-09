//
//  1712. 손익분기점.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/07.
//

import Foundation

func findBreakEvenPoint(A: Int, B: Int, C: Int) -> Int {
    guard B != C else { return -1 }
    let result = Double(A) / Double(C - B)

    return result >= 0 ? Int(result) + 1 : -1
}

//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let breakpoint = findBreakEvenPoint(A: input[0], B: input[1], C: input[2])
//
//print(breakpoint)
