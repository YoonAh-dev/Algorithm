//
//  90_라이언킹심바.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/17.
//

import Foundation

func solution90() {
    let d: [(x: Int, y: Int)] = [(-1, 0), (0, -1), (1, 0), (0, 1)]
    let n = Int(readLine()!)!
    var ate = 0, res = 0
    var simba: (x: Int, y: Int, dis: Int, size: Int) = (0, 0, 0, 0)
    var map: [[Int]] = [], queue: [(x: Int, y: Int, dis: Int, size: Int)] = []
    var ch: [[Int]] = Array(repeating: Array(repeating: 0, count: 25), count: 25)
    (0..<n).forEach { i in
        map.append(readLine()!.split(separator: " ").map { Int($0)! })
        (0..<n).forEach { j in
            if map[i][j] == 9 {
                map[i][j] = 0
                simba = (i, j, 0, 2)
            }
        }
    }

    queue.append(simba)

    while !queue.isEmpty {
        queue = queue.sorted(by: {
            if $0.dis == $1.dis {
                if $0.x == $1.x { return $0.y < $1.y }
                else { return $0.x < $1.x }
            } else {
                return $0.dis < $1.dis
            }
        })

        let top = queue.removeFirst(), x = top.x, y = top.y, dis = top.dis

        if map[x][y] != 0 && map[x][y] < simba.size {
            map[x][y] = 0
            ate += 1
            if ate == simba.size {
                ate = 0
                simba.size += 1
            }
            simba = (x, y, dis, simba.size)
            queue.removeAll()
            ch = Array(repeating: Array(repeating: 0, count: 25), count: 25)
            res = dis
        }

        for point in d {
            let xx = x + point.x, yy = y + point.y
            if xx < 0 || xx > n - 1 || yy < 0 || yy > n - 1 || map[xx][yy] > simba.size || ch[xx][yy] > 0 { continue }
            queue.append((xx, yy, dis + 1, map[xx][yy]))
            ch[xx][yy] = 1
        }
    }

    print(res)
}
