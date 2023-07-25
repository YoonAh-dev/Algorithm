//
//  04_나이차이.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/07/25.
//

import Foundation

func solution04() {
    let _ = Int(readLine()!)!
    let arr = readLine()!.split(separator: " ").map { Int($0)! }

    print(arr.max()! - arr.min()!)
}
