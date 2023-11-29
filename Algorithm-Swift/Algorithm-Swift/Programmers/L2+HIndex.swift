//
//  L2+HIndex.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 11/29/23.
//

import Foundation

func solution(_ citations:[Int]) -> Int {
    var h = 0
    
    for citation in citations.sorted().reversed() {
        if h <= citation && h + 1 <= citation { h += 1 }
        else { break }
    }
    
    return h
}
