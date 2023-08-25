//
//  51_영지선택.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/25.
//

import Foundation

func solution51() {
    let HW = readLine()!.split(separator: " ").map { Int($0)! }
    let H = HW.first!, W = HW.last!
    var terr: [[Int]] = Array(repeating: Array(repeating: 0, count: W+1), count: H+1)
    for i in 1...H {
        let num = readLine()!.split(separator: " ").map { Int($0)! }
        for j in 1...W {
            terr[i][j] = terr[i-1][j] + terr[i][j-1] - terr[i-1][j-1] + num[j - 1]
        }
    }

    let hw = readLine()!.split(separator: " ").map { Int($0)! }
    let h = hw.first!, w = hw.last!
    var res = 0, max = 0

    for i in h...H {
        for j in w...W {
            res = terr[i][j] - terr[i-h][j] - terr[i][j-w] + terr[i-h][j-w]
            if res > max { max = res }
        }
    }

    print(max)
}
