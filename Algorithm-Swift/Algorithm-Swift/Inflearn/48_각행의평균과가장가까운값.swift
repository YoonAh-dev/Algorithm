//
//  48_각행의평균과가장가까운값.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/23.
//

import Foundation

func solution48() {
    var str = ""
    
    (0..<9).forEach { _ in
        let num = readLine()!.split(separator: " ").map { Int($0)! }
        let avg: Int = Int(round(Double(num.reduce(0, +)) / 9.0))
        var min = 100, res = 0

        num.forEach { n in
            if abs(avg - n) < min {
                min = abs(avg - n)
                res = n
            } else if abs(avg - n) == min && res < n {
                res = n
            }
        }

        str += "\(avg) \(res)\n"
    }

    print(str)
}
