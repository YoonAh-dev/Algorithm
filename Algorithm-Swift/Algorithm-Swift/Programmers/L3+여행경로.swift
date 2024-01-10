//
//  L3+여행경로.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 1/10/24.
//

import Foundation

func solution(_ tickets: [[String]]) -> [String] {
    let tickets = tickets.sorted { $0[1] < $1[1] }
    var visited: [Bool] = Array(repeating: false, count: tickets.count)
    var result: [String] = []
    
    func dfs(_ start: String) {
        if result.count == tickets.count {
            result.append(start)
            return
        }
        
        for (index, ticket) in tickets.enumerated() {
            let startAirport = ticket[0]
            let destinAirport = ticket[1]
            
            if (startAirport == start && visited[index] == false) {
                visited[index] = true
                result.append(start)
                dfs(destinAirport)
                if result.count == tickets.count + 1 { return }
                result.removeLast()
                visited[index] = false
            }
        }
    }
    
    dfs("ICN")
    
    return result
}
