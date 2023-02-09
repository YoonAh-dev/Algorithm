//
//  2775. 부녀회장이 될테야.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/08.
//

import Foundation

func countResidents() {
    let loop = Int(readLine()!)!

    for _ in 0..<loop {
        let K = Int(readLine()!)!
        let N = Int(readLine()!)!
        var residents: [[Int]] = Array(repeating: [], count: K + 1)

        for floor in 0...K {
            for room in 0..<N {
                if floor == 0 || room == 0 { residents[floor].append(room + 1); continue }

                let number = residents[floor - 1][room] + residents[floor][room - 1]
                residents[floor].append(number)
            }
        }

        print(residents[K][N - 1])
    }
}

//countResidents()
