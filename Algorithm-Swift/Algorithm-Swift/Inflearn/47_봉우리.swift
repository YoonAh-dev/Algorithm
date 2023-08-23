//
//  47_봉우리.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/23.
//

import Foundation

func solution47() {
    let pos = [(-1, 0), (0, -1), (1, 0), (0, 1)]
    let n = Int(readLine()!)!
    var arr: [[Int]] = Array(repeating: [], count: n)
    var cnt = 0

    for i in 0..<n {
        let num = readLine()!.split(separator: " ").map { Int($0)! }
        arr[i].append(contentsOf: num)
    }

    for i in 0..<n {
        for j in 0..<n {
            var max = 0
            pos.forEach { x, y in
                if (i + x >= 0) && (i + x < n) && (j + y >= 0) && (j + y < n) {
                    if arr[i + x][j + y] > max {
                        max = arr[i + x][j + y]
                    }
                }
            }

            if max < arr[i][j] { cnt += 1 }
        }
    }

    print(cnt)
}
