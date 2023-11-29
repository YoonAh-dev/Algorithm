//
//  L2+전력망을둘로나누기.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 11/29/23.
//

import Foundation

var wireStore: [Int] = []

func Find(num: Int) -> Int {
    if num == wireStore[num] { return num }
    else {
        wireStore[num] = Find(num: wireStore[num])
        return Find(num: wireStore[num])
    }
}

func Union(start: Int, end: Int) {
    let start = Find(num: start)
    let end = Find(num: end)
    if start != end { wireStore[start] = end }
}

func initWireStore(num: Int) {
    wireStore = []
    (0...num).forEach { wireStore.append($0) }
}

func solution(_ n:Int, _ wires:[[Int]]) -> Int {
    var result: Int = 100
    
    // 1. wireStore 초기화
    initWireStore(num: n)
    
    // 2. wire에서 간선 하나씩 제거하면서 개수가 비슷한지 확인
    for i in wires.indices {
        let tempWire = wires.enumerated().filter { $0.0 != i }.map { $0.1 }
        var roots: [Int] = Array(repeating: 0, count: n + 1)
        
        // 2-1. wire 그래프 생성
        for wire in tempWire {
            Union(start: wire[0], end: wire[1])
        }
        
        // 2-2. 각 노드의 roots 노드 개수 세기
        for wire in wireStore {
            guard wire > 0 else { continue }
            let num = Find(num: wire)
            roots[num] += 1
        }
        
        // 2-3. 개수를 가지고 만들어지는 그래프 차이 구하기
        roots = roots.filter { $0 != 0 }
        if roots.count != 1 {
            let num = abs(roots.max()! - roots.min()!)
            if num < result { result = num }
        }
        
        // 2-4. wireStore 다시 초기화
        initWireStore(num: n)
    }
    
    return result
}
