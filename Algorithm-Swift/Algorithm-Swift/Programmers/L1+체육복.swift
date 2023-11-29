//
//  L1+체육복.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 11/29/23.
//

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    // 1. lost한 학생이 reserve 가진 경우 lost, reserve에서 없애기
    let intersectionSet = Set(lost).intersection(Set(reserve))
    var lost = lost.filter { !intersectionSet.contains($0) }.sorted()
    var reserve = reserve.filter { !intersectionSet.contains($0) }.sorted()
    var reserveNumber: [[Int]] = []
    
    // 2. reserve 학생들이 줄 수 있는 번호 정렬
    for number in reserve {
        let numberArr = [number - 1, number + 1].filter { ($0 > 0) && ($0 <= n) }
        reserveNumber.append(numberArr)
    }
    
    // 3. lost 학생들에게 여분 옷 주기
    for numbers in reserveNumber {
        guard !lost.isEmpty else { break }
        
        for (index, num) in lost.enumerated() {
            if numbers.contains(num) {
                lost.remove(at: index)
                break
            }
        }
    }
    
    return n - lost.count
}
