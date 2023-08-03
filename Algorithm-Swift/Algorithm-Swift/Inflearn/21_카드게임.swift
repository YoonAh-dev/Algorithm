//
//  21_카드게임.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/03.
//

import Foundation

func compareResult(_ a: [Int], _ b: [Int]) -> ([Character], [Int]) {
    var arrs: [Character] = []
    var cnts: [Int] = [0, 0, 0]

    for i in 0..<10 {
        if a[i] > b[i] {
            arrs.append("A")
            cnts[0] += 1
        } else if b[i] > a[i] {
            arrs.append("B")
            cnts[1] += 1
        } else {
            arrs.append("D")
            cnts[2] += 1
        }
    }

    return (arrs, cnts)
}

func lastWinner(_ arr: [Character]) -> Character {
    for i in stride(from: 9, through: 0, by: -1) {
        if arr[i] != "D" {
            return arr[i]
        }
    }

    return "D"
}

func solution21() {
    let arrA = readLine()!.split(separator: " ").map { Int($0)! }
    let arrB = readLine()!.split(separator: " ").map { Int($0)! }
    let (result, cnts) = compareResult(arrA, arrB)

    let scoreA = cnts[0] * 3 + cnts[2] * 1
    let scoreB = cnts[1] * 3 + cnts[2] * 1
    print("\(scoreA) \(scoreB)")

    if cnts[0] > cnts[1] {
        print("A")
    } else if cnts[1] > cnts[0] {
        print("B")
    } else {
        print("\(lastWinner(result))")
    }
}
