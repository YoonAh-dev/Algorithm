//
//  20_가위바위보.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/01.
//

import Foundation

func compareNum(_ a: Int, _ b: Int) -> Character {
    switch (a, b) {
    case (1, 2), (2, 3), (3, 1): return "B"
    case (2, 1), (3, 2), (1, 3): return "A"
    default: return "D"
    }
}

func solution20() {
    let n = Int(readLine()!)!
    let a = readLine()!.split(separator: " ").map { Int($0)! }
    let b = readLine()!.split(separator: " ").map { Int($0)! }

    for i in 0..<n {
        let winner = compareNum(a[i], b[i])
        print(winner)
    }
}
