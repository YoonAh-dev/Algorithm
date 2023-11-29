//
//  L3+디스크컨트롤러.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 11/29/23.
//

import Foundation

func solution(_ jobs:[[Int]]) -> Int {
    var jobs = jobs
    var time = 0, answer = 0, total = jobs.count
    
    while !jobs.isEmpty {
        // 전체 jobs를 소요 시간, 시작 시간으로 정렬
        jobs = jobs.sorted(by: {
            if $0[0] <= time && $1[0] <= time { return $0[1] > $1[1] }
            else { return $0[0] > $1[0] }
        })
        
        // 가장 먼저 실행되어야 하는 작업
        let job = jobs.removeLast()
        
        // 해당 작업이 시간을 넘었으면 해당 작업 시작 시간으로 옮김
        if time < job[0] { time = job[0] }
        // 소요 시간 추가
        time += job[1]
        
        // 전체 시간 - 시작 시간 = 실제 실행 시간
        answer += time - job[0]
    }
    
    return answer / total
}
