//
//  87_섬나라아일랜드.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/15.
//

import Foundation

func solution87() {
    let n = Int(readLine()!)!
    let d: [(x: Int, y: Int)] = [(-1, -1), (-1, 0), (-1, 1), (0, -1), (0, 1), (1, -1), (1, 0), (1, 1)]
    var arr: [[Int]] = [], q: [(x: Int, y: Int)] = []
    var cnt = 0
    (0..<n).forEach { _ in arr.append(readLine()!.split(separator: " ").map { Int($0)! }) }

    (0..<n).forEach { i in
        (0..<n).forEach { j in
            if arr[i][j] == 1 {
                q.append((i, j))
                while !q.isEmpty {
                    let t = q.removeFirst()
                    arr[t.x][t.y] = 2
                    for i in 0..<8 {
                        let x = t.x + d[i].x, y = t.y + d[i].y
                        if x >= 0 && x < n && y >= 0 && y < n {
                            if arr[x][y] == 1 {
                                q.append((x, y))
                            }
                        }
                    }
                }
                cnt += 1
            }
        }
    }

    print(cnt)
}
