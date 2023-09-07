//
//  74_최소힙.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/07.
//

import Foundation

func solution74() {
    var queue: [Int] = []
    var input = 0

    while input != -1 {
        input = Int(readLine()!)!

        if input == 0 {
            if queue.isEmpty { print("-1"); continue }
            else { print(queue.removeFirst()) }
        } else {
            queue.append(input)
            queue = queue.sorted()
        }
    }
}
