//
//  10250. ACM 호텔.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/07.
//

import Foundation

func findRoom() {
    let totalNumber = Int(readLine()!)!

    for _ in 0..<totalNumber {
        let informations = readLine()!.split(separator: " ").map { Int(String($0))! }
        let H = informations[0]
        let N = informations[2]

        if N % H == 0 {
            let floor = H * 100
            let room = N / H
            print(floor + room)
        } else {
            let floor = N % H * 100
            let room = N / H + 1
            print(floor + room)
        }
    }
}

//findRoom()
