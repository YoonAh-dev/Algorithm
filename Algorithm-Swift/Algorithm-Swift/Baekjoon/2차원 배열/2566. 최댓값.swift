//
//  2566. 최댓값.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/09.
//

import Foundation

struct Point {
    let x: Int
    let y: Int
}

func findMaxPoint(in arr: [Int], at row: Int) -> (max: Int, point: Point) {
    let maxNum = arr.max()!
    let point = Point(x: row, y: arr.firstIndex(of: maxNum)! + 1)
    return (maxNum, point)
}

func maxNum() {
    var maxNum: Int = -1
    var point: Point = Point(x: 0, y: 0)

    for i in 0..<9 {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let result = findMaxPoint(in: input, at: i + 1)

        if result.max > maxNum {
            maxNum = result.max
            point = result.point
        }
    }

    print(maxNum)
    print(point.x, point.y)
}

//maxNum()
