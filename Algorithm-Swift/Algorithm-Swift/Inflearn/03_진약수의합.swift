//
//  03_진약수의합.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/07/24.
//

import Foundation

func solution03() {
    let n = Int(readLine()!)!
    var sum = 0

    for num in 1...n/2 {
        if n % num == 0 {
            sum += num

            if num == n/2 {
                print(num, terminator: " = ")
            } else {
                print(num, terminator: " + ")
            }
        }
    }

    print(sum)
}
