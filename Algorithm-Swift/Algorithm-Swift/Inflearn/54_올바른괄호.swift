//
//  54_올바른괄호.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/26.
//

import Foundation

func solution54() {
    let input = readLine()!
    var stack: [String] = []

    for n in input.map({ String($0) }) {
        if n == "(" { stack.append("(") }
        else {
            if stack.isEmpty {
                print("NO")
                return
            } else {
                stack.removeLast()
            }
        }
    }

    if stack.isEmpty { print("YES") }
    else { print("NO") }
}
