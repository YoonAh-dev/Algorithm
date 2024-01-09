//
//  L3+네트워크.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 1/9/24.
//

import Foundation

var network: [Int] = []

func Find(_ a: Int) -> Int {
    if network[a] == a { return a }
    else {
        network[a] = Find(network[a])
        return network[a]
    }
}

func Union(_ a: Int, _ b: Int) {
    let a = Find(a), b = Find(b)
    if a != b { network[a] = b }
}

func solution(_ n: Int, _ computers: [[Int]]) -> Int {
    var result: [Int] = Array(repeating: 0, count: n + 1)
    var cnt = 0
    
    for i in 0...n { network.append(i) }
    
    for (index, computer) in computers.enumerated() {
        for (i, com) in computer.enumerated() {
            if index == i { continue }
            if com == 1 { Union(index + 1, i + 1) }
        }
    }
    
    for i in 1..<network.count {
        result[Find(network[i])] += 1
    }
    
    for res in result { if res > 0 { cnt += 1 } }
    
    return cnt
}
