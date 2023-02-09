//
//  1929. 소수 구하기.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/08.
//

import Foundation

func findPrime(firstNum: Int, secondNum: Int) {
    guard secondNum > 1 else { print(1); return }
    var primes: [Int] = Array(firstNum...secondNum)

    for i in 2...secondNum where i * i <= secondNum {
        for index in 0..<primes.count where primes[index] > i {
            if primes[index] == 0 { continue }
            if primes[index] % i == 0 { primes[index] = 0 }
        }
    }

    primes.forEach {
        if $0 != 0 && $0 != 1 { print($0) }
    }
}

//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//findPrime(firstNum: input.first!, secondNum: input.last!)

// 시간이 훨씬 빠르다..

//let nm = readLine()!.split(separator: " ").map{ Int(String($0))! }
//let n = nm[0]
//let m = nm[1]
//
//var arr = Array(repeating: 1, count: m+1)
//arr[0] = 0
//arr[1] = 0
//for i in 2...m{
//    if arr[i] == 1{
//        for j in stride(from: i+i, to: m+1, by: i) {
//            arr[j] = 0
//        }
//    }
//}
//
//for i in n...m{
//    if arr[i] == 1 { print(i)}
//}
