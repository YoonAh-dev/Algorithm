//
//  13_가장많이사용된자릿수.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/07/29.
//

import Foundation

func solution13() {
    let str = readLine()!
    var counts = Array(repeating: 0, count: 10)
    var max = 0, result = 0

    str.forEach { s in
        let index = Int("\(s)")!
        counts[index] += 1
    }

    counts.enumerated().forEach { index, num in
        if num > max {
            max = num
            result = index
        } else if num == max {
            result = index
        }
    }

    print(result)
}
