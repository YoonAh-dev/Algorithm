//
//  57_재귀함수이진수출력.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/28.
//

import Foundation

func recursive57(n: Int) {
    if n <= 1 {
        print(n, terminator: "")
        return
    }
    recursive57(n: n / 2)
    print(n % 2, terminator: "")
}

func solution57() {
    let n = Int(readLine()!)!
    recursive57(n: n)
}
