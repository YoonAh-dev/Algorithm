//
//  69_이진트리넓이우선탐색.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/05.
//

import Foundation

func solution69() {
    var Q = Array(repeating: 0, count: 100), ch = Array(repeating: 0, count: 100), map: [Int: [Int]] = [:]
    var front = -1, back = -1
    (0..<6).forEach { _ in
        let input = readLine()!.split(separator: " ").map { Int($0)! }, key = input.first!, value = input.last!
        var keyValue = map[key] ?? []
        keyValue.append(value)
        map.updateValue(keyValue, forKey: key)
        var valueValue = map[value] ?? []
        valueValue.append(key)
        map.updateValue(valueValue, forKey: value)
    }

    back += 1
    Q[back] = 1
    ch[1] = 1

    while front < back {
        front += 1
        let x = Q[front]
        print(x, terminator: " ")

        for num in map[x]! {
            if ch[num] == 0 {
                ch[num] = 1
                back += 1
                Q[back] = num
            }
        }
    }
}
