//
//  02_자연수의합.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/07/24.
//

import Foundation

func solution02() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input.first!
    let m = input.last!

    var sum = 0

    for num in n...m {
        sum += num

        if num != m {
            print(num, terminator: " + ")
        } else {
            print(num, terminator: " = ")
        }
    }

    print(sum)
}
