//
//  L3+이중순위우선큐.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 11/29/23.
//

import Foundation

func deleteElement(in arr: [Int], sort: ((Int, Int) -> Bool)) -> [Int] {
    guard !arr.isEmpty else { return [] }
    var arr = arr.sorted(by: sort)
    arr.removeLast()
    return arr
}

func addElement(in arr: [Int], element: Int) -> [Int] {
    var arr = arr
    arr.append(element)
    return arr
}

func extractDigit(in word: String) -> Int {
    return Int(word.split(separator: " ").last!)!
}

func solution(_ operations:[String]) -> [Int] {
    var priorityQueue: [Int] = []
    
    for operation in operations {
        switch operation {
            case "D 1":
                priorityQueue = deleteElement(in: priorityQueue, sort: { $0 < $1 })
            case "D -1":
                priorityQueue = deleteElement(in: priorityQueue, sort: { $0 > $1 })
            default:
                let element = extractDigit(in: operation)
                priorityQueue = addElement(in: priorityQueue, element: element)
        }
    }
    
    if priorityQueue.isEmpty { return [0, 0] }
    else { return [priorityQueue.max()!, priorityQueue.min()!]}
}
