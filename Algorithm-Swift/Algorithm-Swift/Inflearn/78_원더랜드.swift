//
//  78_원더랜드.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/09.
//

import Foundation

var ch78: [Int] = Array(0...100)

func Find78(v: Int) -> Int {
    if v == ch78[v] { return v }
    else {
        ch78[v] = Find78(v: ch78[v])
        return ch78[v]
    }
}

func Union78(a: Int, b: Int) -> Bool {
    let a = Find78(v: a)
    let b = Find78(v: b)
    if a != b {
        ch78[a] = b
        return true
    } else {
        return false
    }
}

func solution78() {
    let ve = readLine()!.split(separator: " ").map { Int($0)! }, e = ve.last!
    var arr: [(row: Int, col: Int, cost: Int)] = []
    var sum = 0
    (0..<e).forEach { _ in
        let input = readLine()!.split(separator: " ").map { Int($0) }, a = input[0]!, b = input[1]!, c = input[2]!
        arr.append((a, b, c))
    }

    arr = arr.sorted(by: { $0.cost < $1.cost })

    arr.forEach { n in
        if Union78(a: n.row, b: n.col) {
            sum += n.cost
        }
    }

    print(sum)
}
