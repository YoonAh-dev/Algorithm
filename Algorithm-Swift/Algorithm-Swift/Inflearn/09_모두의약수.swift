//
//  09_모두의약수.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/07/27.
//

import Foundation

func solution09() {
    let num = Int(readLine()!)!
    var counts = Array(repeating: 0, count: num)

    for i in 1...num {
        var cnt = 1;
        for j in stride(from: i, through: num, by: i * cnt) {
            counts[j-1] += 1
            cnt += 1
        }
    }

    counts.forEach { print($0, terminator: " ") }
}
