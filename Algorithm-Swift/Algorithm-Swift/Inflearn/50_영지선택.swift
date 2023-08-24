//
//  50_영지선택.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/24.
//

import Foundation

func solution50() {
    let HW = readLine()!.split(separator: " ").map { Int($0)! }
    let H = HW.first!, W = HW.last!
    var terr: [[Int]] = []
    for _ in 0..<H {
        terr.append(readLine()!.split(separator: " ").map { Int($0)! })
    }
    let hw = readLine()!.split(separator: " ").map { Int($0)! }
    let h = hw.first!, w = hw.last!
    var max = 0

    for i in 0..<H {
        if H - i < h { break }
        for j in 0..<W {
            if W - j < w { break }

            var sum = 0
            for k in 0..<h {
                for m in 0..<w {
                    sum += terr[i + k][j + m]
                }
            }
            if sum > max { max = sum }
        }
    }

    print(max)
}
