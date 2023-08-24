//
//  49_블록의최댓값.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/24.
//

import Foundation

func solution49() {
    let n = Int(readLine()!)!
    let front = readLine()!.split(separator: " ").map { Int($0)! }
    let side = readLine()!.split(separator: " ").map { Int($0)! }
    var res = 0

    for i in 0..<n {
        for j in 0..<n {
            res += min(front[j], side[i])
        }
    }

    print(res)
}
