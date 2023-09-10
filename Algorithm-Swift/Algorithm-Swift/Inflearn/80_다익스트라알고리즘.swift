//
//  80_다익스트라알고리즘.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/10.
//

import Foundation

func solution80() {
    let nm = readLine()!.split(separator: " ").map { Int($0)! }, n = nm.first!, m = nm.last!
    var arr: [[(end: Int, cost: Int)]] = Array(repeating: [], count: n+1)
    var queue: [(end: Int, cost: Int)] = []
    var dist: [Int] = Array(repeating: 2147000000, count: n+1)
    var ch: [Int] = Array(repeating: 0, count: n+1)

    (0..<m).forEach { _ in
        let input = readLine()!.split(separator: " ").map { Int($0)! }, a = input[0], b = input[1], c = input[2]
        arr[a].append((b, c))
    }

    dist[1] = 0
    queue.append((1, 0))

    while !queue.isEmpty {
        let top = queue.removeFirst(), node = top.end, cost = top.cost

        if ch[node] == 0 {
            ch[node] = 1
            for n in arr[node] {
                if dist[n.end] > cost + n.cost {
                    dist[n.end] = cost + n.cost
                    queue.append((n.end, cost + n.cost))
                }
            }
        }
    }

    for i in 2...6 {
        print("\(i) : ", terminator: "")
        if dist[i] == 2147000000 { print("impossible")}
        else { print(dist[i]) }
    }
}
