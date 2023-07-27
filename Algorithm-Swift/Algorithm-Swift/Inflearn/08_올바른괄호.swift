//
//  08_올바른괄호.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/07/27.
//

import Foundation

func solution08() {
    var str = readLine()!
    var brackets: [Character] = []

    while str != "" {
        let bracket = str.last!

        if bracket == ")" {
            brackets.append(bracket)
        } else {
            if brackets.isEmpty { break }
            brackets.removeLast()
        }

        str.removeLast()
    }

    if brackets.isEmpty && str == "" {
        print("YES")
    } else {
        print("NO")
    }
}
