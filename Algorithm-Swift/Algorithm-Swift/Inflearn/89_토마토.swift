//
//  89_토마토.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/16.
//

import Foundation

func solution89() {
    let mn = readLine()!.split(separator: " ").map { Int($0)! }, m = mn.first!, n = mn.last!
    let dis: [(x: Int, y: Int)] = [(-1, 0), (0, -1), (1, 0), (0, 1)]
    var tomato: [[Int]] = []
    var queue: [(x: Int, y: Int)] = []
    var ch: [[Int]] = Array(repeating: Array(repeating: 0, count: 1001), count: 1001)
    var checker = true, unto = 0, res = 0

    (0..<n).forEach { i in
        tomato.append(readLine()!.split(separator: " ").map { Int($0)! })

        for (j, t) in tomato[i].enumerated() {
            if t == 0 { checker = false; unto += 1 }
            if t == 1 { queue.append((i, j)) }
        }
    }

    if checker { print("0"); return }

    while !queue.isEmpty {
        let t = queue.removeFirst()
        if res < ch[t.x][t.y] { res = ch[t.x][t.y] }

        for d in dis {
            let x = d.x + t.x, y = d.y + t.y
            if x >= 0 && x < n && y >= 0 && y < m {
                if tomato[x][y] == 0 {
                    unto -= 1
                    queue.append((x, y))
                    tomato[x][y] = 1
                    ch[x][y] = ch[t.x][t.y] + 1
                }
            }
        }
    }

    if unto == 0 { print(res) }
    else { print("-1") }
    return
}
