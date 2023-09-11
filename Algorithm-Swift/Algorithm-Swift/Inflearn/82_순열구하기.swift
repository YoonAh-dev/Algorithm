//
//  82_순열구하기.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/11.
//

import Foundation

var cnt82 = 0

func dfs82(l: Int, r: Int, ch: inout [Int], res: inout [Int], arr: [Int]) {
    if l == r {
        for re in res[..<r] {
            print(re, terminator: " ")
        }
        cnt82 += 1
        print("")
    } else {
        for i in 1...res.count {
            if ch[i] == 0 {
                res[l] = arr[i]
                ch[i] = 1
                dfs82(l: l+1, r: r, ch: &ch, res: &res, arr: arr)
                ch[i] = 0
            }
        }
    }
}

func solution82() {
    let nr = readLine()!.split(separator: " ").map { Int($0)! }, n = nr.first!, r = nr.last!
    var arr: [Int] = [0], ch: [Int] = Array(repeating: 0, count: n+1), res: [Int] = Array(repeating: 0, count: n)
    arr.append(contentsOf: readLine()!.split(separator: " ").map { Int($0)! })
    dfs82(l: 0, r: r, ch: &ch, res: &res, arr: arr)
    print(cnt82)
}
