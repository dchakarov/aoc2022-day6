//
//  main.swift
//  No rights reserved.
//

import Foundation
import RegexHelper

func main() {
    let fileUrl = URL(fileURLWithPath: "./aoc-input")
    guard let inputString = try? String(contentsOf: fileUrl, encoding: .utf8) else { fatalError("Invalid input") }
    
    let line = inputString.components(separatedBy: "\n")
        .filter { !$0.isEmpty }.first!

    let distinctCharactersNeeded = 14 // 4 for part 1
    
    var buffer = [Character]()
    var currentIndex = 1
    for char in line {
        buffer.append(char)
        if buffer.count > distinctCharactersNeeded {
            buffer.removeFirst()
            if buffer.count == Set(buffer).count {
                print(currentIndex)
                exit(0)
            }
        }
        currentIndex += 1
    }
}

main()
