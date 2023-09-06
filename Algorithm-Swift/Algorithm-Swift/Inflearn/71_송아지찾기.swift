//
//  71_송아지찾기.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/06.
//

import Foundation

func solution71() {
    let se = readLine()!.split(separator: " ").map { Int($0)! }, s = se.first!, e = se.last!
    var ch = Array(repeating: 0, count: 10001), des = [-1, 1, 5]
    var Q: [(pos: Int, cost: Int)] = []

    Q.append((s, 0))
    ch[s] = 1

    while !Q.isEmpty {
        let x = Q.removeFirst()
        for d in des {
            if x.pos + d == e {
                print(x.cost + 1)
                return
            } else {
                if x.pos + d >= 0 && x.pos + d <= 10000 && ch[x.pos + d] == 0 {
                    Q.append((x.pos + d, x.cost + 1))
                    ch[x.pos + d] = 1
                }
            }
        }
    }

}
