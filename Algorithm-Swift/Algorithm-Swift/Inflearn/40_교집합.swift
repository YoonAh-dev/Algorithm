//
//  40_교집합.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/17.
//

import Foundation

func solution40() {
    let n = Int(readLine()!)!
    let arr1 = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
    let m = Int(readLine()!)!
    let arr2 = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
    var i = 0, j = 0, res = ""

    while i != n && j != m {
        if arr1[i] == arr2[j] {
            res += "\(arr1[i]) "
            i += 1
            j += 1
        }
        else if arr1[i] > arr2[j] { j += 1 }
        else if arr1[i] < arr2[j] { i += 1 }
    }

    print(res)
}
