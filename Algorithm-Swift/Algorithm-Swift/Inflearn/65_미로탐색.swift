//
//  65_미로탐색.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/03.
//

import Foundation

var cnt65 = 0
var pos = [(0, -1), (-1, 0), (0, 1), (1, 0)]

func findMap(arr: inout [[Int]], posX: Int, posY: Int) {
    if posX == 6 && posY == 6 { cnt65 += 1 }
    else {
        (0...3).forEach { i in
            let x = posX + pos[i].1
            let y = posY + pos[i].0
            if x >= 0 && x < 7 && y >= 0 && y < 7 {
                if arr[x][y] == 0 {
                    arr[posX][posY] = 1
                    findMap(arr: &arr, posX: x, posY: y)
                    arr[posX][posY] = 0
                }
            }
        }
    }
}

func solution65() {
    var arr: [[Int]] = []
    for _ in 0..<7 {
        arr.append(readLine()!.split(separator: " ").map { Int($0)! })
    }

    findMap(arr: &arr, posX: 0, posY: 0)

    print(cnt65)
}
