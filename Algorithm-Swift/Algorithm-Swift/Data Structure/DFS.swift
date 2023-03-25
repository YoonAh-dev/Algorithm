//
//  DFS.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/22.
//

import Foundation

let graph = [
    [], // 0
    [2,3], // 1
    [1,4,5], // 2
    [1,6,7], // 3
    [2], // 4
    [2], // 5
    [3], // 6
    [3,8], // 7
    [7] // 8
]

var visited = Array.init(repeating: false, count: graph.count)

func dfs(start: Int) {
    visited[start] = true // 시작점

    print(start, terminator: " ")

    for i in graph[start] { // 왼쪽부터 순회
        if !visited[i] {
            dfs(start: i)
        }
    }
}
