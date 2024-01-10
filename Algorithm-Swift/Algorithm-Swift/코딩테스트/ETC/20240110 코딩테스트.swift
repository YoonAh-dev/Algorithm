//
//  20240110 코딩테스트.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 1/10/24.
//

import Foundation

// .1

func checkSameOrder(_ oldOrder: [String], _ newOrder: [String]) -> Bool {
    for i in oldOrder.indices {
        if oldOrder[i] != newOrder[i] { return false }
    }
    return true
}

func solution(_ K: Int, _ userScores: [String]) -> Int {
    var userScores: [[String]] = userScores.map { $0.split(separator: " ").map { String($0) } }
    var board: [String: (score: Int, order: Int)] = [:]
    var cnt = 0
    
    for (index, userInfo) in userScores.enumerated() {
        let name = userInfo[0]
        let score = Int(userInfo[1])!
        
        if board.isEmpty {
            board[name] = (score: score, order: index)
            cnt += 1
            continue
        }
        
        let sortedBoard = board.sorted {
            if $0.value.score == $1.value.score {
                return $0.value.order < $1.value.order
            }
            return $0.value.score > $1.value.score
        }
        let lastUser = sortedBoard.last!
        if board.count < K || score > lastUser.value.score {
            if let oldScore = board[name] {
                if oldScore.score < score { board[name] = (score: score, order: index) }
                else { continue }
            }
            
            let newBoard = board.sorted {
                if $0.value.score == $1.value.score {
                    return $0.value.order < $1.value.order
                }
                return $0.value.score > $1.value.score
            }
            if !checkSameOrder(sortedBoard.map { $0.key }, newBoard.map { $0.key }) {
                cnt += 1
            }
        } else {
            if board.count >= K { board[lastUser.key] = nil }
            board[name] = (score: score, order: index)
            cnt += 1
        }
    }
    
    return cnt
}

// 2.

func direction(to begin: String, from end: String) -> String {
    switch (begin, end) {
    case ("S", "W"), ("W", "N"), ("N", "E"), ("E", "S"):
        return "right"
    case ("S", "E"), ("E", "N"), ("N", "W"), ("W", "S"):
        return "left"
    default:
        return "wrong direction"
    }
}

func solution(_ path: String) -> [String] {
    var path = Array(path)
    var paths: [(path: String, count: Int)] = []
    var result: [String] = []
    var cnt = 1, time = 0
    
    for i in 1..<path.count {
        if path[i - 1] == path[i] { cnt += 1 }
        else {
            paths.append((path: String(path[i - 1]), count: cnt))
            cnt = 1
        }
        
        if i == path.count - 1 { paths.append((path: String(path[i]), count: cnt)) }
    }
    
    for i in 0..<paths.count - 1 {
        if paths[i].count > 5 {
            let timeStr = "Time \(paths[i].count - 5 + time): "
            let distanceStr = "Go straight 500m and "
            let turnStr = "turn \(direction(to: paths[i].path, from: paths[i + 1].path))"
            let sentence = timeStr + distanceStr + turnStr
            result.append(sentence)
            time += paths[i].count
        } else {
            let timeStr = "Time \(time): "
            let distanceStr = "Go straight \(paths[i].count * 100)m and "
            let turnStr = "turn \(direction(to: paths[i].path, from: paths[i + 1].path))"
            let sentence = timeStr + distanceStr + turnStr
            result.append(sentence)
            time += paths[i].count
        }
    }
    
    return result
}
