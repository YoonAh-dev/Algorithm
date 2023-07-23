//
//  01_1부터N까지M의배수합.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/07/23.
//

import Foundation

func solution01() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input.first!
    let m = input.last!

    var sum = 0

    for num in 1...n {
        if num % m == 0 {
            sum += num
        }
    }

    print(sum)
}
