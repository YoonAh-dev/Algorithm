//
//  2908. 상수.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/07.
//

import Foundation

func sangsuAnswer() -> Int {
    let input = readLine()!.reversed().split(separator: " ").map { Int(String($0))! }

    return input.max()!
}

//print(sangsuAnswer())
