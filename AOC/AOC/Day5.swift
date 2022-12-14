//
//  Day5.swift
//  AOC
//
//  Created by Brayden Lemke on 12/13/22.
//

import Foundation

struct Day5 {

    let input = """
    move 3 from 9 to 7
    move 4 from 4 to 5
    move 2 from 4 to 6
    move 4 from 7 to 5
    move 3 from 7 to 3
    move 2 from 5 to 9
    move 5 from 6 to 3
    move 5 from 9 to 1
    move 3 from 8 to 4
    move 3 from 4 to 6
    move 8 from 1 to 8
    move 1 from 8 to 6
    move 2 from 8 to 2
    move 5 from 8 to 4
    move 1 from 8 to 1
    move 6 from 6 to 4
    move 1 from 7 to 9
    move 5 from 1 to 7
    move 1 from 1 to 2
    move 2 from 9 to 8
    move 6 from 4 to 9
    move 1 from 6 to 8
    move 3 from 2 to 7
    move 4 from 2 to 8
    move 4 from 9 to 3
    move 6 from 5 to 4
    move 7 from 8 to 1
    move 10 from 4 to 1
    move 12 from 1 to 5
    move 1 from 4 to 9
    move 1 from 2 to 3
    move 2 from 9 to 1
    move 1 from 9 to 3
    move 1 from 6 to 7
    move 1 from 9 to 1
    move 3 from 1 to 3
    move 9 from 5 to 9
    move 2 from 2 to 7
    move 2 from 7 to 4
    move 3 from 9 to 4
    move 7 from 5 to 7
    move 5 from 1 to 3
    move 2 from 4 to 5
    move 1 from 4 to 6
    move 1 from 6 to 9
    move 4 from 9 to 2
    move 12 from 7 to 9
    move 2 from 4 to 9
    move 6 from 5 to 9
    move 3 from 7 to 6
    move 12 from 9 to 6
    move 5 from 9 to 1
    move 1 from 7 to 6
    move 14 from 6 to 1
    move 20 from 3 to 5
    move 5 from 9 to 5
    move 3 from 2 to 8
    move 1 from 6 to 4
    move 1 from 9 to 2
    move 1 from 4 to 6
    move 1 from 2 to 6
    move 16 from 1 to 5
    move 1 from 2 to 1
    move 12 from 5 to 6
    move 1 from 8 to 4
    move 29 from 5 to 1
    move 5 from 6 to 9
    move 20 from 1 to 3
    move 4 from 1 to 3
    move 11 from 3 to 8
    move 1 from 4 to 3
    move 4 from 9 to 8
    move 7 from 1 to 8
    move 2 from 3 to 2
    move 2 from 6 to 7
    move 1 from 9 to 8
    move 10 from 3 to 5
    move 1 from 6 to 1
    move 1 from 7 to 2
    move 3 from 1 to 2
    move 6 from 2 to 4
    move 2 from 6 to 3
    move 4 from 6 to 5
    move 1 from 6 to 2
    move 1 from 2 to 9
    move 6 from 5 to 2
    move 1 from 9 to 3
    move 24 from 8 to 7
    move 1 from 4 to 8
    move 5 from 5 to 4
    move 1 from 4 to 8
    move 1 from 8 to 7
    move 2 from 8 to 9
    move 1 from 9 to 7
    move 6 from 2 to 4
    move 10 from 3 to 7
    move 3 from 5 to 3
    move 1 from 9 to 8
    move 3 from 3 to 8
    move 4 from 8 to 7
    move 1 from 4 to 6
    move 1 from 6 to 4
    move 13 from 4 to 3
    move 17 from 7 to 6
    move 1 from 6 to 3
    move 2 from 4 to 8
    move 3 from 7 to 5
    move 14 from 6 to 7
    move 1 from 5 to 9
    move 1 from 5 to 9
    move 2 from 6 to 7
    move 1 from 5 to 1
    move 1 from 1 to 6
    move 1 from 9 to 3
    move 29 from 7 to 4
    move 10 from 4 to 3
    move 6 from 7 to 5
    move 1 from 6 to 5
    move 1 from 9 to 7
    move 1 from 7 to 2
    move 4 from 3 to 2
    move 1 from 2 to 9
    move 1 from 8 to 5
    move 11 from 3 to 4
    move 24 from 4 to 7
    move 2 from 2 to 5
    move 10 from 3 to 2
    move 6 from 2 to 1
    move 5 from 4 to 7
    move 1 from 9 to 2
    move 3 from 5 to 1
    move 1 from 4 to 6
    move 4 from 2 to 3
    move 5 from 5 to 7
    move 2 from 5 to 3
    move 32 from 7 to 5
    move 16 from 5 to 1
    move 1 from 1 to 2
    move 3 from 2 to 9
    move 1 from 8 to 6
    move 3 from 7 to 6
    move 1 from 2 to 4
    move 5 from 6 to 8
    move 5 from 8 to 6
    move 2 from 9 to 3
    move 1 from 7 to 5
    move 9 from 5 to 4
    move 1 from 9 to 1
    move 2 from 3 to 1
    move 4 from 3 to 6
    move 1 from 3 to 8
    move 6 from 4 to 6
    move 6 from 5 to 9
    move 1 from 9 to 6
    move 1 from 5 to 1
    move 1 from 5 to 4
    move 1 from 3 to 6
    move 1 from 8 to 3
    move 1 from 4 to 2
    move 1 from 2 to 3
    move 17 from 6 to 4
    move 4 from 1 to 8
    move 3 from 9 to 6
    move 1 from 8 to 4
    move 1 from 9 to 7
    move 2 from 6 to 2
    move 1 from 7 to 8
    move 12 from 1 to 9
    move 8 from 9 to 2
    move 1 from 6 to 9
    move 6 from 2 to 8
    move 2 from 8 to 3
    move 18 from 4 to 9
    move 2 from 1 to 6
    move 1 from 6 to 5
    move 3 from 4 to 3
    move 7 from 3 to 8
    move 4 from 2 to 7
    move 1 from 4 to 6
    move 2 from 6 to 4
    move 13 from 9 to 6
    move 1 from 5 to 2
    move 5 from 9 to 3
    move 9 from 1 to 2
    move 1 from 1 to 8
    move 1 from 2 to 6
    move 3 from 7 to 6
    move 2 from 2 to 6
    move 9 from 8 to 6
    move 1 from 7 to 8
    move 1 from 8 to 7
    move 2 from 4 to 6
    move 5 from 3 to 6
    move 17 from 6 to 9
    move 7 from 8 to 4
    move 4 from 2 to 3
    move 17 from 6 to 2
    move 1 from 6 to 4
    move 1 from 7 to 8
    move 1 from 8 to 9
    move 24 from 9 to 6
    move 4 from 3 to 1
    move 1 from 1 to 5
    move 20 from 6 to 4
    move 4 from 6 to 9
    move 1 from 5 to 7
    move 2 from 4 to 2
    move 1 from 9 to 7
    move 25 from 4 to 3
    move 1 from 4 to 2
    move 2 from 1 to 6
    move 3 from 9 to 4
    move 2 from 4 to 7
    move 2 from 7 to 5
    move 1 from 4 to 2
    move 1 from 6 to 3
    move 1 from 1 to 5
    move 5 from 3 to 9
    move 1 from 5 to 6
    move 10 from 2 to 8
    move 9 from 2 to 5
    move 21 from 3 to 6
    move 1 from 7 to 6
    move 2 from 6 to 5
    move 5 from 9 to 7
    move 6 from 7 to 8
    move 19 from 6 to 9
    move 1 from 6 to 1
    move 8 from 8 to 1
    move 1 from 6 to 1
    move 2 from 8 to 5
    move 5 from 9 to 2
    move 6 from 8 to 2
    move 2 from 9 to 7
    move 9 from 9 to 4
    move 7 from 2 to 4
    move 1 from 6 to 4
    move 14 from 5 to 9
    move 1 from 1 to 8
    move 1 from 7 to 9
    move 4 from 2 to 9
    move 16 from 4 to 6
    move 3 from 2 to 8
    move 1 from 6 to 2
    move 2 from 8 to 9
    move 1 from 8 to 7
    move 1 from 8 to 3
    move 3 from 2 to 7
    move 1 from 3 to 9
    move 8 from 9 to 3
    move 4 from 7 to 8
    move 1 from 5 to 4
    move 4 from 6 to 3
    move 1 from 4 to 2
    move 9 from 3 to 8
    move 10 from 9 to 5
    move 8 from 6 to 7
    move 13 from 8 to 4
    move 8 from 5 to 2
    move 3 from 6 to 3
    move 7 from 9 to 6
    move 7 from 7 to 2
    move 2 from 4 to 6
    move 5 from 6 to 2
    move 3 from 1 to 5
    move 5 from 5 to 8
    move 4 from 6 to 2
    move 4 from 1 to 8
    move 15 from 2 to 6
    move 11 from 4 to 9
    move 12 from 6 to 8
    move 1 from 6 to 9
    move 5 from 3 to 7
    move 2 from 2 to 6
    move 6 from 7 to 1
    move 3 from 1 to 3
    move 1 from 4 to 1
    move 1 from 3 to 9
    move 1 from 3 to 9
    move 1 from 7 to 6
    move 1 from 3 to 2
    move 4 from 2 to 6
    move 4 from 2 to 7
    move 1 from 2 to 6
    move 4 from 1 to 6
    move 12 from 6 to 7
    move 2 from 6 to 1
    move 8 from 9 to 6
    move 1 from 7 to 4
    move 14 from 8 to 1
    move 8 from 1 to 5
    move 1 from 3 to 9
    move 5 from 9 to 5
    move 1 from 8 to 9
    move 1 from 9 to 2
    move 1 from 9 to 3
    move 5 from 8 to 3
    move 12 from 5 to 4
    move 1 from 9 to 2
    move 6 from 7 to 3
    move 7 from 3 to 2
    move 1 from 5 to 1
    move 1 from 8 to 3
    move 2 from 1 to 3
    move 2 from 6 to 9
    move 5 from 6 to 5
    move 5 from 1 to 7
    move 4 from 4 to 1
    move 7 from 2 to 8
    move 4 from 3 to 8
    move 1 from 9 to 3
    move 1 from 9 to 5
    move 4 from 1 to 8
    move 10 from 7 to 9
    move 1 from 6 to 7
    move 2 from 8 to 6
    move 6 from 4 to 2
    move 5 from 3 to 1
    move 2 from 6 to 3
    move 2 from 7 to 1
    move 5 from 2 to 5
    move 2 from 7 to 1
    move 7 from 5 to 7
    move 2 from 5 to 6
    move 2 from 5 to 3
    move 3 from 2 to 9
    move 9 from 9 to 3
    move 1 from 6 to 4
    move 3 from 3 to 1
    move 9 from 8 to 2
    move 6 from 3 to 6
    move 8 from 7 to 9
    move 4 from 9 to 8
    move 14 from 1 to 5
    move 1 from 9 to 2
    move 1 from 1 to 5
    move 2 from 3 to 6
    move 12 from 5 to 3
    move 2 from 2 to 8
    move 7 from 6 to 2
    move 12 from 2 to 8
    move 2 from 6 to 2
    move 6 from 9 to 6
    move 1 from 1 to 2
    move 1 from 9 to 3
    move 2 from 5 to 9
    move 1 from 9 to 2
    move 1 from 9 to 4
    move 1 from 3 to 2
    move 2 from 6 to 7
    move 2 from 6 to 9
    move 5 from 4 to 2
    move 14 from 3 to 9
    move 15 from 9 to 4
    move 1 from 7 to 4
    move 10 from 8 to 6
    move 1 from 5 to 9
    move 2 from 9 to 5
    move 10 from 8 to 1
    move 1 from 7 to 4
    move 5 from 1 to 2
    move 2 from 1 to 5
    move 3 from 4 to 6
    move 4 from 5 to 8
    move 5 from 8 to 6
    move 14 from 2 to 9
    move 2 from 6 to 7
    move 3 from 2 to 9
    move 3 from 1 to 7
    move 1 from 7 to 3
    move 3 from 7 to 1
    move 1 from 3 to 6
    move 1 from 7 to 6
    move 1 from 8 to 9
    move 2 from 1 to 4
    move 1 from 1 to 2
    move 16 from 9 to 4
    move 7 from 4 to 8
    move 5 from 8 to 1
    move 2 from 8 to 3
    move 2 from 1 to 7
    move 13 from 6 to 7
    move 2 from 2 to 3
    move 4 from 7 to 4
    move 6 from 4 to 5
    move 4 from 7 to 6
    move 3 from 1 to 2
    move 2 from 2 to 6
    move 3 from 3 to 8
    move 5 from 5 to 3
    move 2 from 9 to 6
    move 3 from 3 to 7
    move 1 from 8 to 1
    move 22 from 4 to 8
    move 1 from 4 to 3
    move 9 from 6 to 3
    move 1 from 2 to 1
    move 4 from 3 to 4
    move 2 from 4 to 5
    move 1 from 1 to 7
    move 4 from 3 to 7
    move 2 from 6 to 1
    move 1 from 6 to 7
    move 18 from 8 to 7
    move 2 from 6 to 5
    move 2 from 3 to 4
    move 1 from 5 to 4
    move 30 from 7 to 6
    move 2 from 1 to 3
    move 18 from 6 to 8
    move 12 from 6 to 4
    move 13 from 4 to 9
    move 2 from 3 to 8
    move 1 from 6 to 2
    move 3 from 7 to 2
    move 1 from 1 to 2
    move 2 from 5 to 9
    move 8 from 8 to 1
    move 1 from 7 to 8
    move 7 from 1 to 3
    move 2 from 4 to 9
    move 1 from 1 to 6
    move 4 from 2 to 1
    move 16 from 8 to 1
    move 1 from 2 to 6
    move 2 from 4 to 8
    move 2 from 5 to 1
    move 4 from 3 to 7
    move 3 from 7 to 1
    move 1 from 6 to 8
    move 1 from 8 to 9
    move 1 from 7 to 3
    move 6 from 3 to 5
    move 1 from 3 to 8
    move 1 from 6 to 9
    move 16 from 9 to 5
    move 4 from 5 to 3
    move 15 from 5 to 1
    move 1 from 5 to 8
    move 3 from 9 to 8
    move 9 from 8 to 5
    move 6 from 5 to 1
    move 4 from 5 to 6
    move 2 from 6 to 4
    move 1 from 6 to 4
    move 1 from 8 to 4
    move 3 from 3 to 6
    move 3 from 6 to 8
    move 1 from 6 to 8
    move 21 from 1 to 9
    move 4 from 8 to 5
    move 3 from 5 to 7
    move 2 from 5 to 1
    move 2 from 4 to 8
    move 2 from 8 to 2
    move 2 from 7 to 8
    move 1 from 7 to 9
    move 1 from 8 to 7
    move 5 from 1 to 8
    move 1 from 7 to 8
    move 4 from 8 to 4
    move 2 from 4 to 5
    move 1 from 2 to 7
    move 1 from 2 to 7
    move 2 from 7 to 6
    move 2 from 6 to 9
    move 1 from 4 to 9
    move 1 from 3 to 4
    move 16 from 1 to 5
    move 16 from 5 to 7
    move 2 from 5 to 4
    move 14 from 9 to 6
    move 5 from 4 to 3
    move 3 from 3 to 6
    move 5 from 1 to 4
    move 2 from 4 to 7
    move 7 from 9 to 4
    move 2 from 9 to 7
    move 10 from 6 to 9
    move 8 from 4 to 6
    move 1 from 8 to 4
    move 1 from 1 to 9
    move 14 from 6 to 3
    move 10 from 3 to 2
    move 3 from 7 to 8
    move 6 from 3 to 1
    move 2 from 7 to 9
    move 5 from 7 to 9
    move 10 from 9 to 1
    move 2 from 4 to 3
    move 1 from 2 to 1
    move 16 from 1 to 4
    move 1 from 6 to 1
    move 2 from 3 to 9
    move 3 from 8 to 5
    move 8 from 7 to 1
    move 3 from 5 to 9
    move 7 from 4 to 6
    move 7 from 1 to 5
    move 2 from 8 to 3
    move 1 from 7 to 8
    """

    let stacks: [[Character]] = [
        ["R", "G", "H", "Q", "S", "B", "T", "N"],
        ["H", "S", "F", "D", "P", "Z", "J"],
        ["Z", "H", "V"],
        ["M", "Z", "J", "F", "G", "H"],
        ["T", "Z", "C", "D", "L", "M", "S", "R"],
        ["M", "T", "W", "V", "H", "Z", "J"],
        ["T", "F", "P", "L", "Z"],
        ["Q", "V", "W", "S"],
        ["W", "H", "L", "M", "T", "D", "N", "C"]
    ]

    func moveStacks(input: String, stacks: [[Character]]) -> String {
        var result = ""
        let lines = input.split(separator: "\n")
        var stacks = stacks
        
        for line in lines {
            let moves = line.split(separator: " ")
            let numberOfMoves = Int(moves[1])!
            let fromStack = Int(moves[3])! - 1
            let toStack = Int(moves[5])! - 1
            
            for _ in 0..<numberOfMoves {
                let cargo = stacks[fromStack].remove(at: stacks[fromStack].count - 1)
                stacks[toStack].append(cargo)
            }
        }
        
        for stack in stacks {
            result+=String(stack[stack.count - 1])
        }
        
        return result
    }

    //moveStacks(input: input, stacks: stacks)

    func moveStacksPart2(input: String, stacks: [[Character]]) -> String {
        var result = ""
        let lines = input.split(separator: "\n")
        var stacks = stacks
        
        for line in lines {
            let moves = line.split(separator: " ")
            let numberOfMoves = Int(moves[1])!
            let fromStack = Int(moves[3])! - 1
            let toStack = Int(moves[5])! - 1
            
            var itemsToBeMoved: [Character] = []
            
            for _ in 0..<numberOfMoves {
                let cargo = stacks[fromStack].remove(at: stacks[fromStack].count - 1)
                itemsToBeMoved.insert(cargo, at: 0)
            }
            
            stacks[toStack].insert(contentsOf: itemsToBeMoved, at: stacks[toStack].count)
            
        }
        
        for stack in stacks {
            result+=String(stack[stack.count - 1])
        }
        
        return result
    }

//    moveStacksPart2(input: input, stacks: stacks)

}
