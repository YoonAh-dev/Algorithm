//
//  70_그래프최단거리.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/05.
//

import Foundation

func solution70() {
    let nm = readLine()!.split(separator: " ").map { Int($0)! }, n = nm.first!, m = nm.last!
    var map: [Int: [Int]] = [:], Q = Array(repeating: 0, count: n + 1), ch = Array(repeating: 0, count: n + 1)
    var res = Array(repeating: 0, count: n + 1)
    var back = -1, front = -1

    (0..<m).forEach { _ in
        let input = readLine()!.split(separator: " ").map { Int($0)! }, k = input.first!, v = input.last!
        var values = map[k] ?? []
        values.append(v)
        map.updateValue(values, forKey: k)
    }

    back += 1
    Q[back] = 1
    ch[1] = 1
    while front < back {
        front += 1
        let x = Q[front]
        for num in map[x] ?? [] {
            if ch[num] == 0 {
                ch[num] = 1
                res[num] = res[x] + 1
                back += 1
                Q[back] = num
            }
        }
    }

    for i in 2...n { print("\(i) : \(res[i])") }
}
