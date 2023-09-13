//
//  86_피자배달거리.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/13.
//

import Foundation

var min86 = 2147000000

func dfs86(s: Int, L: Int, m: Int, mapp: [(x: Int, y: Int)], maph: [(x: Int, y: Int)], ch: inout [Int]) {
    if L == m {
        var sum = 0
        for h in maph {
            let x = h.x, y = h.y
            var dis = 2147000000
            for j in 0..<m {
                let res = abs(x - mapp[ch[j]].x) + abs(y - mapp[ch[j]].y)
                if dis > res { dis = res }
            }
            sum += dis
        }
        if min86 > sum { min86 = sum }
    } else {
        for i in s..<mapp.count {
            ch[L] = i
            dfs86(s: s+1, L: L+1, m: m, mapp: mapp, maph: maph, ch: &ch)
        }
    }
}

func solution86() {
    let nm = readLine()!.split(separator: " ").map { Int($0)! }, n = nm.first!, m = nm.last!
    var mapp: [(x: Int, y: Int)] = [], maph: [(x: Int, y: Int)] = [], ch: [Int] = Array(repeating: 0, count: 50)
    (0..<n).forEach { i in
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        for j in input.indices {
            if input[j] == 1 { maph.append((i, j)) }
            else if input[j] == 2 { mapp.append((i, j)) }
        }
    }
    dfs86(s: 0, L: 0, m: m, mapp: mapp, maph: maph, ch: &ch)
    print(min86)
}
