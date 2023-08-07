//
//  27_N의표현법.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/07.
//

import Foundation

func isPrime3(_ num: Int) -> Bool {
    var cnt = 0

    for i in 2...num {
        if num % i == 0 {
            cnt += 1
        }
    }

    return cnt == 1
}

func solution27() {
    let n = Int(readLine()!)!
    var primes = Array(repeating: 0, count: 1001)

    for i in  2...n {
        var temp = i
        var j = 2

        while true {
            if temp % j == 0 {
                primes[j] += 1
                temp /= j
            } else {
                j += 1
            }

            if temp == 1 {
                break
            }
        }
    }

    print("\(n)! =", terminator: " ")
    for i in 2...n {
        if isPrime3(i) {
            print("\(primes[i])", terminator: " ")
        }
    }

}
