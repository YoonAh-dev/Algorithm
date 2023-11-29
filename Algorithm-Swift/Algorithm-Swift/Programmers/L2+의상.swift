//
//  L2+의상.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 11/29/23.
//

import Foundation

func dfs(n: Int, r: Int) -> Int {
    if r == 0 || n == r { return 1 }
    else { return dfs(n: n - 1, r: r - 1) + dfs(n: n - 1, r: r) }
}

func solution(_ clothes:[[String]]) -> Int {
    var categories: [String: [String]] = [:]
    var combination = 1
    
    for cloth in clothes {
        let category = cloth.last!, name = cloth.first!
        
        if categories.keys.contains(category) {
            let value = categories[category]! + [name]
            categories.updateValue(value, forKey: category)
        } else {
            categories[category] = [name]
        }
    }
    
    return categories.values.map { dfs(n: $0.count, r: 0) + dfs(n: $0.count, r: 1) }.reduce(1, *) - 1
}
