//
//  BFS.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/22.
//

import Foundation

//var visited = Array.init(repeating: false, count: graph.count)
var queue = Queue<Int>()

func bfs(start: Int) {
    queue.enqueue(start)
    visited[start] = true

    while !queue.isEmpty {
        guard let element = queue.dequeue() else { return }
        print(element, terminator: " ")

        for i in graph[element] {
            if !visited[i] {
                queue.enqueue(i)
                visited[i] = true
            }
        }
    }
}
