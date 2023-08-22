//
//  46_멀티태스킹.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/22.
//

import Foundation

func solution46() {
    let n = Int(readLine()!)!
    var arr: [Int] = []
    for _ in 0..<n { arr.append(Int(readLine()!)!) }
    let k = Int(readLine()!)!
    var i = 0, index = 0

    while true {
        if arr[index] != 0 {
            arr[index] -= 1
            index += 1
            i += 1
        } else {
            index += 1
        }

        if index == n { index = 0 }
        if i == k { break }
    }

    if arr[index] != 0 { print(index + 1) }
    else {
        for _ in 0..<n {
            if arr[index] != 0 {
                print(index + 1)
                return
            } else {
                index += 1
            }

            if index == n { index = 0 }
        }

        print("-1")
    }
}
