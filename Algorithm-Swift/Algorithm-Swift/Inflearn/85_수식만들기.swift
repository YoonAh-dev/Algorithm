//
//  85_수식만들기.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/13.
//

import Foundation

var max85 = -2147000000, min85 = 2147000000

func dfs85(l: Int, n: Int, res: Int, arr: [Int], oper: inout [Int]) {
    if l == n {
        if max85 < res { max85 = res }
        if min85 > res { min85 = res }
    } else {
        for (i, op) in oper.enumerated() {
            if op != 0 {
                oper[i] -= 1
                switch i {
                case 0: dfs85(l: l + 1, n: n, res: res + arr[l], arr: arr, oper: &oper)
                case 1: dfs85(l: l + 1, n: n, res: res - arr[l], arr: arr, oper: &oper)
                case 2: dfs85(l: l + 1, n: n, res: res * arr[l], arr: arr, oper: &oper)
                default: dfs85(l: l + 1, n: n, res: res / arr[l], arr: arr, oper: &oper)
                }
                oper[i] += 1
            }
        }
    }
}

func solution85() {
    let n = Int(readLine()!)!
    let arr = readLine()!.split(separator: " ").map { Int($0)! }
    var oper = readLine()!.split(separator: " ").map { Int($0)! }

    dfs85(l: 1, n: n, res: arr[0], arr: arr, oper: &oper)

    print(max85)
    print(min85)
}
