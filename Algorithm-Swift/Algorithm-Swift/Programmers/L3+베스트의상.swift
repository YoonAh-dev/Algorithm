//
//  L3+베스트의상.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 11/29/23.
//

import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var totalPlays: [String: Int] = [:]
    var genresDict: [String: [(index: Int, play: Int)]] = [:]
    var result: [Int] = []
    
    for (index, genre) in genres.enumerated() {
        if let info = genresDict[genre] {
            let newValue = info + [(index: index, play: plays[index])]
            genresDict.updateValue(newValue, forKey: genre)
            totalPlays[genre] = totalPlays[genre]! + plays[index]
        } else {
            genresDict[genre] = [(index: index, play: plays[index])]
            totalPlays[genre] = plays[index]
        }
    }
    
    for (genre, _) in totalPlays.sorted(by: { $0.value > $1.value }) {
        let dict = genresDict[genre]!.sorted(by: {
            if $0.play != $1.play { return $0.play > $1.play }
            else { return $0.index < $1.index }
        }).map { $0.index }
        
        if dict.count >= 2 { result += dict[0...1] }
        else { result += [dict[0]] }
    }
    
    return result
}
