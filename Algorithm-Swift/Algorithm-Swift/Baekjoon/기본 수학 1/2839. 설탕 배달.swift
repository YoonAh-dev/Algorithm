//
//  2839. 설탕 배달.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/08.
//

import Foundation

func sugarDelivery() -> Int {
    let target = Int(readLine()!)!
    let five: Int = target / 5
    let three: Int = target / 3
    var results: Set<Int> = []

    for t in 0...three {
        for f in 0...five {
            let result: Int = 5 * f + 3 * t

            if result == target {
                results.insert(f + t)
            }
        }
    }

    return results.isEmpty ? -1 : results.min()!
}

//print(sugarDelivery())
