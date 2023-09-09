//
//  77_친구인가.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/09.
//

import Foundation

var arr77: [Int] = []

func Find(v: Int) -> Int {
    if v == arr77[v] { return v }
    else {
        arr77[v] = Find(v: arr77[v])
        return Find(v: arr77[v])
    }
}

func Union(a: Int, b: Int) {
    let a = Find(v: a)
    let b = Find(v: b)
    if a != b { arr77[a] = b }
}

func solution77() {
    let nm = readLine()!.split(separator: " ").map { Int($0)! }, n = nm.first!, m = nm.last!
    (0...n).forEach { arr77.append($0) }
    (0..<m).forEach { _ in
        let input = readLine()!.split(separator: " ").map { Int($0)! }, row = input.first!, col = input.last!
        Union(a: row, b: col)
    }

    let friend = readLine()!.split(separator: " ").map { Int($0)! }, f1 = friend.first!, f2 = friend.last!
    if Find(v: f1) == Find(v: f2) {
        print("YES")
    } else {
        print("NO")
    }
}
