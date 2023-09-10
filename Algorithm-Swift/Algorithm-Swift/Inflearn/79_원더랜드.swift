//
//  79_원더랜드.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/10.
//

import Foundation

func solution79() {
    var ch: [Int] = Array(repeating: 0, count: 101)
    var arr: [[(end: Int, cost: Int)]] = Array(repeating: [], count: 101)
    var queue: [(end: Int, cost: Int)] = []
    let ve = readLine()!.split(separator: " ").map { Int($0)! }, e = ve.last!
    var sum = 0

    (0..<e).forEach { _ in
        let input = readLine()!.split(separator: " ").map { Int($0)! }, a = input[0], b = input[1], c = input[2]
        arr[a].append((b, c))
        arr[b].append((a, c))
    }

    queue.append((1, 0))

    while !queue.isEmpty {
        queue = queue.sorted(by: { $0.cost < $1.cost })
        let top = queue.removeFirst()
        let node = top.end, cost = top.cost

        if ch[node] == 0 {
            sum += cost
            ch[node] = 1
        } else { continue }

        for n in arr[node] {
            queue.append((n.end, n.cost))
        }
    }

    print(sum)
}
