//
//  75_최대수입스케줄.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/08.
//

import Foundation

func solution75() {
    let n = Int(readLine()!)!
    var arr: [(money: Int, day: Int)] = []
    var queue: [Int] = []
    var days = 0, index = 0, sum = 0

    (0..<n).forEach { _ in
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        arr.append((input.first!, input.last!))
        if days < input.last! { days = input.last! }
    }

    arr = arr.sorted(by: {
        if $0.day == $1.day { return $0.money > $1.money }
        return $0.day > $1.day
    })

    while days > 0 {
        if index < arr.count, arr[index].day == days {
            let day = arr[index].day
            queue.append(arr[index].money)
            index += 1

            while true {
                if index > arr.count - 1 { break }

                if arr[index].day == day {
                    queue.append(arr[index].money)
                    index += 1
                } else {
                    break
                }
            }
        }

        if !queue.isEmpty {
            queue.sort(by: { $0 > $1 })
            let top = queue.removeFirst()
            sum += top
        }

        days -= 1
    }

    print(sum)
}
