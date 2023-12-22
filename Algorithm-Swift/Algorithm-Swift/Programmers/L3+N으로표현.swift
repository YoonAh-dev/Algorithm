//
//  L3+N으로표현.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 12/22/23.
//

import Foundation

func solution(_ N:Int, _ number:Int) -> Int {
    var count = 2
    var calculation: [Set<Int>] = [[], [N], [(N + N), (N / N), (N - N), (N * N), Int("\(N)\(N)")!]]
    
    if N == number { return 1 }
    if calculation[2].contains(number) { return 2 }
    
    while true {
        count += 1
        guard count <= 8 else { break }
        
        var i = count - 1, j = 1
        var newCalculation: [Int] = []
        while i >= j {
            // 계산하기(ex. 3이면 1-2 / 4면 1-3, 2-2)
            for n in calculation[i] {
                for m in calculation[j] {
                    var results: [Int] = [(n + m), (n - m), (n * m), (m - n)]
                    if n != 0 { results += [(m / n)] }
                    if m != 0 { results += [(n / m)] }
                    
                    for result in results {
                        if result == number { return count }
                    }
                    
                    newCalculation += results
                }
            }
            
            i -= 1
            j += 1
        }
        
        calculation.append(Set(newCalculation))
        // 반복되는 숫자(55, 555, 5555 ...)
        calculation[count].insert(Int(String(repeating: "\(N)", count: count))!)
    }
    
    return -1
}
