//
//  2675. 문자열 반복.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/07.
//

import Foundation

func repeatCharacter(of string: String, for count: Int) -> String {
    var result: String = ""

    string.forEach {
        result += String(repeating: $0, count: count)
    }

    return result
}

func printRepeatString() {
    let count = Int(readLine()!)!

    for _ in 0..<count {
        let string = readLine()!.split(separator: " ").map { String($0) }
        let result = repeatCharacter(of: string.last!, for: Int(string.first!)!)
        print(result)
    }
}

//printRepeatString()
