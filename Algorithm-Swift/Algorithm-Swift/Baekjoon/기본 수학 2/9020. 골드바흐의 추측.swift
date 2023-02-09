//
//  9020. 골드바흐의 추측.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/08.
//

import Foundation

func goldBach() {
    let total = Int(readLine()!)!

    for _ in 0..<total {
        let input = Int(readLine()!)!
        let primes = primes(targetNumber: input)
        let combinations = findCombination(primes: primes, target: input)

        if combinations.count == 1 {
            print(combinations.first!.0, combinations.first!.1)
        } else {
            let result = combinations.min(by: { $0.gap < $1.gap })
            print(result!.0, result!.1)
        }
    }
}

func primes(targetNumber: Int) -> [Int] {
    var arr = Array(0...targetNumber)
    arr[0] = 0
    arr[1] = 0

    for i in 2...targetNumber {
        if arr[i] != 0 {
            for j in stride(from: i + i, to: targetNumber+1, by: i) {
                arr[j] = 0
            }
        }
    }

    return arr.filter { $0 != 0 && $0 != targetNumber }
}

func findCombination(primes: [Int], target: Int) -> [(Int, Int, gap: Int)] {
    var result: [(Int, Int, Int)] = []

    for i in 0..<primes.count {
        for j in stride(from: primes.count - 1, through: i, by: -1) {
            if primes[i] + primes[j] == target && primes[j] - primes[i] >= 0 {
                result.append((primes[i], primes[j], primes[j] - primes[i]))
                break
            }
        }
    }

    return result
}

//goldBach()

// 시간이 덜 드는 방식

//var arr = Array(repeating: true, count: 10000+1)
//
//for i in 2...10000 {
//    if arr[i] == true {
//        for j in stride(from: i*i, through: 10000, by: i) {
//            arr[j] = false
//        }
//    }
//}
//
//let n = Int(readLine()!)!
//
//for _ in 1...n {
//    var input = Int(readLine()!)!
//    var i = input/2
//
//    while true {
//        if arr[i] == true && arr[input-i] == true {
//            print(i, input-i)
//            break
//        } else {
//            i -= 1
//        }
//    }
//}
