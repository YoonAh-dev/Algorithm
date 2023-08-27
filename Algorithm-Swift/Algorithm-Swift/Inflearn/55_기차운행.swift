//
//  55_기차운행.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/27.
//

import Foundation

func solution55() {
    let n = Int(readLine()!)!
    let arr = readLine()!.split(separator: " ").map { Int($0)! }
    var stack: [Int] = []
    var cur = 1, index = 0, res = ""

    while index < n {
        if arr[index] == cur {
            res += "PO"
            index += 1
            cur += 1

            while !stack.isEmpty {
                if stack.last! == cur {
                    stack.removeLast()
                    res += "O"
                    cur += 1
                } else { break }
            }
        } else {
            stack.append(arr[index])
            index += 1
            res += "P"
        }
    }

    if !stack.isEmpty {
        print("impossible")
        return
    }

    print(res)
}
