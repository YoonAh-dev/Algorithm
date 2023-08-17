//
//  39_두배열합치기.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/17.
//

import Foundation

func solution39() {
    let n = Int(readLine()!)!
    let arr1 = readLine()!.split(separator: " ").map { Int($0)! }
    let m = Int(readLine()!)!
    let arr2 = readLine()!.split(separator: " ").map { Int($0)! }

    var top1 = 0, top2 = 0, index = 0
    var res = Array(repeating: 0, count: n + m)

    while !(top1 == n && top2 == m) {
        if top1 == n {
            for i in top2..<m {
                res[index] = arr2[i]
                index += 1
            }
            break
        } else if top2 == m {
            for i in top1..<n {
                res[index] = arr1[i]
                index += 1
            }
            break
        }
        
        if arr1[top1] > arr2[top2] {
            res[index] = arr2[top2]
            top2 += 1
        } else {
            res[index] = arr1[top1]
            top1 += 1
        }

        index += 1
    }

    res.forEach { print($0, terminator: " ")}
}
