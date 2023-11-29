//
//  L1+모의고사.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 11/29/23.
//

import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var result: [Int] = []
    let answer = answers.map { String($0) }.joined()
    let first = zip(String(repeating: "12345", count: 2000).map { $0 }, answer.map { $0 }).filter { $0 == $1 }.count
    let second = zip(String(repeating: "21232425", count: 1250).map { $0 }, answer.map { $0 }).filter { $0 == $1 }.count
    let third = zip(String(repeating: "3311224455", count: 1000), answer.map { $0 }).filter { $0 == $1 }.count
    let firstMax = max(first, second), secondMax = max(firstMax, third)
    
    if secondMax == first { result.append(1) }
    if secondMax == second { result.append(2) }
    if secondMax == third { result.append(3) }
    
    return result
}
