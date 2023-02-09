//
//  2563. 색종이.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/09.
//

import Foundation

func coloredPaper() -> Int {
    let totalCount: Int = Int(readLine()!)!
    let column: [Bool] = Array(repeating: false, count: 101)
    var papers: [[Bool]] = Array(repeating: column, count: 101)

    for _ in 0..<totalCount {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let point = Point(x: input.first!, y: input.last!)

        papers = putPaper(papers, at: point)
    }

    return papers.flatMap { $0 }.filter { $0 }.count
}

func putPaper(_ papers: [[Bool]], at point: Point) -> [[Bool]] {
    var papers = papers

    for i in point.x..<point.x+10 {
        for j in point.y..<point.y+10 {
            if papers[i][j] { continue }
            papers[i][j] = true
        }
    }

    return papers
}

//struct Point {
//    let x: Int
//    let y: Int
//}
//
//print(coloredPaper())

// Set를 이용해서 구현

//struct xy: Hashable {
//    var x: Int
//    var y: Int
//}
//var setXy:Set<xy> = []
//for _ in 1...Int(readLine()!)! {
//    let input = readLine()!.split{$0==" "}.map{Int($0)!}
//    for i in 0...9 {
//        for j in 0...9 {
//            setXy.insert(xy(x: input[0] + i, y: input[1] + j))
//        }
//    }
//}
//print(setXy.count)
