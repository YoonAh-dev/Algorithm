//
//  2581. 소수.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/08.
//

import Foundation

//let firstNum = Int(readLine()!)!
//let secondNum = Int(readLine()!)!
//let result = primes(firstNum, secondNum)
//
//if result.isEmpty {
//    print(-1)
//} else {
//    print(result.reduce(0, +), result.min()!)
//}

func isPrime(_ num: Int) -> Bool {
    guard num > 1 else { return false }

    for i in 2...num where i * i <= num  {
        if num % i == 0 { return false }
    }

    return true
}

func primes(_ firstNum: Int, _ secondNum: Int) -> [Int] {
    return (firstNum...secondNum).filter { isPrime($0) }
}
