//
//  L1+최소직사각형.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 11/29/23.
//

import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    let sizes = sizes.map { $0.sorted() }
    let maxOfmins = sizes.map { $0[0] }.compactMap { $0 }.max()!
    let maxOfmaxs = sizes.map { $0[1] }.compactMap { $0 }.max()!
    return maxOfmins * maxOfmaxs
}
