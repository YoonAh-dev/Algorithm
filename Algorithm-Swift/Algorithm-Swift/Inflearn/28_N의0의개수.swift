//
//  28_N의0의개수.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/07.
//

import Foundation

func solution28() {
    let n = Int(readLine()!)!
    var primes = Array(repeating: 0, count: 1001)

    for i in 2...n {
        var temp = i
        var j = 2

        while true {
            if temp % j == 0 {
                primes[j] += 1
                temp /= j
            } else { j += 1 }

            if temp == 1 { break }
        }
    }

    print(min(primes[2], primes[5]))
}
