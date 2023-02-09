//
//  1978. 소수 찾기.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/08.
//

import Foundation

//let total = readLine()!
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//print(countPrime(input))

//func isPrime(_ num: Int) -> Bool {
//    guard num > 1 else { return false }
//
//    for i in 2...num where i * i <= num  {
//        if num % i == 0 { return false }
//    }
//
//    return true
//}

func countPrime(_ numbers: [Int]) -> Int {
    return numbers.filter { isPrime($0) }.count
}
