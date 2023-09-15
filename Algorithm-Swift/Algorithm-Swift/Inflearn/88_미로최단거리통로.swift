//
//  88_미로최단거리통로.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/15.
//

import Foundation

func solution88() {
    let d: [(x: Int, y: Int)] = [(-1, 0), (0, -1), (1, 0), (0, 1)]
    var arr:[[Int]] = [], q: [(x: Int, y: Int, cost: Int)] = []
    var min = 2147000000
    (0..<7).forEach { _ in
        arr.append(readLine()!.split(separator: " ").map { Int($0)! })
    }

    q.append((0, 0, 0))

    while !q.isEmpty {
        let t = q.removeFirst()
        arr[t.x][t.y] = 1

        if t.x == 6 && t.y == 6 {
            if min > t.cost { min = t.cost }
            continue
        }

        for (x, y) in d {
            if x + t.x >= 0 && x + t.x < 7 && y + t.y >= 0 && y + t.y < 7 {
                if arr[x + t.x][y + t.y] == 0 {
                    q.append((x + t.x, y + t.y, t.cost + 1))
                }
            }
        }
    }

    if min != 2147000000 { print(min) }
    else { print("-1") }
}
