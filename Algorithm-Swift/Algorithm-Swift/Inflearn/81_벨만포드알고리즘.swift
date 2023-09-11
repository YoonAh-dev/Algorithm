//
//  81_벨만포드알고리즘.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/11.
//

import Foundation

func solution81() {
    let nm = readLine()!.split(separator: " ").map { Int($0)! }, n = nm.first!, m = nm.last!
    var v: [(start: Int, end: Int, cost: Int)] = []
    var dist: [Int] = Array(repeating: 2147000000, count: 101)
    (0..<m).forEach { _ in
        let input = readLine()!.split(separator: " ").map { Int($0)! }, a = input[0], b = input[1], c = input[2]
        v.append((a, b, c))
    }
    let se = readLine()!.split(separator: " ").map { Int($0)! }, s = se.first!, e = se.last!

    dist[s] = 0

    for _ in 1..<n {
        for n in v {
            let start = n.start, end = n.end, cost = n.cost
            if dist[start] != 2147000000 && dist[start] + cost < dist[end] {
                dist[end] = dist[start] + cost
            }
        }
    }

    for n in v {
        let start = n.start, end = n.end, cost = n.cost
        if dist[start] != 2147000000 && dist[start] + cost < dist[end] {
            print("-1")
            return
        }
    }

    print(dist[e])
}
