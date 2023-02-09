//
//  4948. 베르트랑 공준.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/08.
//

import Foundation

func chebyshevTheorem() {
    while true {
        let input = Int(readLine()!)!
        if input == 0 { break }

        print(countPrime(of: input))
    }
}

func countPrime(of num: Int) -> Int {
    var arr = Array(repeating: 1, count: 2 * num + 1)

    for i in 2...2*num {
        if arr[i] == 1 {
            for j in stride(from: i + i, to: 2 * num + 1, by: i) {
                arr[j] = 0
            }
        }
    }

    return arr.enumerated().filter { $1 != 0 && $0 > num }.count
}

//chebyshevTheorem()

// 오히려 다 만들어두고 가져가서 쓰는게 더 빠름...
//var arr = Array(repeating: true, count: 246913)
//
//for i in 2...246912 {
//    if arr[i] == true {
//        for j in stride(from: i*i, through: 246913, by: i) {
//            arr[j] = false
//        }
//    }
//}
//
//while true {
//    var n = Int(readLine()!)!
//    var sum = 0
//
//    if n == 0 {
//        break
//    }
//
//    for i in n+1...n*2 {
//        if arr[i] {
//            sum += 1
//        }
//    }
//    print(sum)
//}
