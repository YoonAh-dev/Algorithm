//
//  L2+다리를지나는트럭.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 11/29/23.
//

import Foundation

func solution(_ bridgeLength:Int, _ weight:Int, _ truckWeights:[Int]) -> Int {
    var bridge: [(weight: Int, cnt: Int)] = []
    var index = 0, time = 0

    while true {
        // 트럭 앞으로 보내기
        bridge = bridge.map { ($0.weight, $0.cnt - 1) }
        time += 1
        
        // 앞차가 다 건넜다면 배열에서 없애기
        if !bridge.isEmpty {
            if bridge.first!.cnt == 0 { bridge.removeFirst() }
        }
        
        // 더이상 건널 트럭이 없다면 그만
        if bridge.isEmpty && index >= truckWeights.count { break }
        
        // 다른 트럭이 올라갈 수 있다면 올리기
        guard index < truckWeights.count else { continue }
        if bridge.map { $0.weight }.reduce(0, +) + truckWeights[index] <= weight {
            bridge.append((truckWeights[index], bridgeLength))
            index += 1
        }
    }
    
    return time
}
