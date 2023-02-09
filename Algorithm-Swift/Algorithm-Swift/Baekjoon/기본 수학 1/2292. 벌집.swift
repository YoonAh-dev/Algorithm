//
//  2292. 벌집.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/07.
//

import Foundation

func countRoomToPass() -> Int {
    let targetRoom = Int(readLine()!)!
    var index: Int = 1
    var sum: Int = 1

    while(true) {
        defer {
            sum += 6 * index
            index += 1
        }

        if targetRoom > sum { continue }

        return index
    }
}

//print(countRoomToPass())
