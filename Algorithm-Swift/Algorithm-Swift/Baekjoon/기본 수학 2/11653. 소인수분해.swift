//
//  11653. 소인수분해.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/08.
//

import Foundation

//func isPrime(_ num: Int) -> Bool {
//    guard num > 1 else { return false }
//
//    for i in 2...num where i * i <= num  {
//        if num % i == 0 { return false }
//    }
//
//    return true
//}

func isComposite(_ num: Int) -> Bool {
    guard num > 1 else { return false }

    for i in 2...num where i * i <= num  {
        if num % i == 0 { return true }
    }

    return false
}

func primeFactorization(of num: Int) {
    var num = num

    while isComposite(num) {
        for i in 1...num where i * i <= num {
            if num % (i + 1) == 0 {
                num /= i + 1
                print(i + 1)
                break
            }
        }
    }

    if isPrime(num) {
        print(num)
    }
}

//let input = Int(readLine()!)!
//primeFactorization(of: input)


// [시간 훨씬 적게 걸림] -> composite, prime 확인하지 않기에

//var N = Int(readLine()!)!
//var num = 2
//
//while N > 1 {
//    if num * num > N {
//        print(N)
//        break
//    }
//
//    while N % num == 0 {
//        N /= num
//        print(num)
//    }
//    num += 1
//}
