//
//  05_나이계산.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/07/25.
//

import Foundation

func calculateAge(_ year: Int) -> Int {
    return 2019 - year + 1
}

func solution05() {
    let id = readLine()!.split(separator: "-").map { String($0) }
    let startIndex = id.first!.startIndex
    let lastIndex = id.first!.index(startIndex, offsetBy: 1)

    switch id.last!.first {
    case "1":
        let year = 1900 + Int(id.first![startIndex...lastIndex])!
        let age = calculateAge(year)
        print("\(age) M")
    case "2":
        let year = 1900 + Int(id.first![startIndex...lastIndex])!
        let age = calculateAge(year)
        print("\(age) W")
    case "3":
        let year = 2000 + Int(id.first![startIndex...lastIndex])!
        let age = calculateAge(year)
        print("\(age) M")
    case "4":
        let year = 2000 + Int(id.first![startIndex...lastIndex])!
        let age = calculateAge(year)
        print("\(age) W")
    default: break
    }
}
