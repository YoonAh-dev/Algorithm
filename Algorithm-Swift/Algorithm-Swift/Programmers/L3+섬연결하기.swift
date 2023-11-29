//
//  L3+섬연결하기.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 11/30/23.
//

import Foundation

// Prim's Algorithm 사용

func solution(_ n:Int, _ costs:[[Int]]) -> Int {
    typealias Edge = (node: Int, cost: Int)
    
    var islands: [Int: [Edge]] = [:]
    var check: [Int] = Array(repeating: 0, count: n)
    var priorityQueue: [Edge] = []
    var sum = 0
    
    func addNode(_ start: Int, _ end: Int, _ cost: Int) {
        if var value = islands[start] {
            value += [(node: end, cost: cost)]
            islands[start] = value
        } else {
            islands[start] = [(node: end, cost: cost)]
        }
    }
    
    for cost in costs {
        let start = cost[0], end = cost[1], value = cost[2]
        addNode(start, end, value)
        addNode(end, start, value)
    }
    
    priorityQueue.append((node: 0, cost: 0))
    
    while !priorityQueue.isEmpty {
        priorityQueue = priorityQueue.sorted(by: { $0.cost < $1.cost })
        
        let node = priorityQueue.first!.node, cost = priorityQueue.first!.cost
        priorityQueue.removeFirst()
        
        if check[node] == 0 {
            sum += cost
            check[node] = 1
        } else { continue }
        
        if let island = islands[node] {
            for n in island {
                priorityQueue.append((node: n.node, cost: n.cost))
            }
        }
    }
    
    return sum
}

// 다른 사람 풀이 -> Union & Find 방식 사용

var parent = (0...101).compactMap { $0 }

func findRoot(_ child: Int) -> Int {
    if parent[child] != child {
        parent[child] = findRoot(parent[child])
    }
    return parent[child]
}

func solution(_ n:Int, _ costs:[[Int]]) -> Int {
    var cost = 0
    costs.sorted { $0[2] < $1[2] }.forEach { connection in
        let root1 = findRoot(connection[0])
        let root2 = findRoot(connection[1])
        if root1 != root2 {
            parent[root1] = root2
            cost += connection[2]
        }
    }
    return cost
}
