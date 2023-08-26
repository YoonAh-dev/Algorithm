//
//  53_K진수출력.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/26.
//

import Foundation

func solution53() {
    let nk = readLine()!.split(separator: " ").map { Int($0)! }
    var n = nk.first!
    let k = nk.last!
    var str: [String] = []

    while n >= k {
        var rest: Int = n % k
        if rest < 10 { rest += 48 }
        else { rest += 55 }
        str.append(String(UnicodeScalar(rest)!))

        n /= k

        if n < k && n < 10 { str.append(String(UnicodeScalar(n + 48)!)) }
        else if n < k && n >= 10 { str.append(String(UnicodeScalar(n + 55)!)) }
    }

    for i in stride(from: str.count - 1, through: 0, by: -1) {
        print(str[i], terminator: "")
    }
}
