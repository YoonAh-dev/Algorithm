//
//  14681. 사분면 고르기.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/21.
//

import Foundation

func calculateQuadrant(of point: CGPoint) -> Int {
    let xState = point.x > 0 ? "+" : "-"
    let yState = point.y > 0 ? "+" : "-"

    switch (xState, yState) {
    case ("+", "+"): return 1
    case ("-", "+"): return 2
    case ("-", "-"): return 3
    case ("+", "-"): return 4
    default: return 0
    }
}

let xPoint = Int(readLine()!)!
let yPoint = Int(readLine()!)!
let point = CGPoint(x: xPoint, y: yPoint)
