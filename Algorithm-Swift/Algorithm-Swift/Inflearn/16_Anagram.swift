//
//  16_Anagram.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/07/30.
//

import Foundation

func solution16() {
    let a = readLine()!
    let b = readLine()!

    if a.count != b.count {
        print("NO")
        return
    }

    let sortedA = a.sorted()
    let sortedB = b.sorted()
    for i in 0..<sortedA.count {
        if sortedA[i] != sortedB[i] {
            print("NO")
            return
        }
    }

    print("YES")
}
