//
//  Day10.swift
//  AOC
//
//  Created by Brayden Lemke on 12/13/22.
//

import Foundation

struct Day10 {

    let testX = """
    noop
    addx 3
    addx -5
    """

    let testInput = """
    addx 15
    addx -11
    addx 6
    addx -3
    addx 5
    addx -1
    addx -8
    addx 13
    addx 4
    noop
    addx -1
    addx 5
    addx -1
    addx 5
    addx -1
    addx 5
    addx -1
    addx 5
    addx -1
    addx -35
    addx 1
    addx 24
    addx -19
    addx 1
    addx 16
    addx -11
    noop
    noop
    addx 21
    addx -15
    noop
    noop
    addx -3
    addx 9
    addx 1
    addx -3
    addx 8
    addx 1
    addx 5
    noop
    noop
    noop
    noop
    noop
    addx -36
    noop
    addx 1
    addx 7
    noop
    noop
    noop
    addx 2
    addx 6
    noop
    noop
    noop
    noop
    noop
    addx 1
    noop
    noop
    addx 7
    addx 1
    noop
    addx -13
    addx 13
    addx 7
    noop
    addx 1
    addx -33
    noop
    noop
    noop
    addx 2
    noop
    noop
    noop
    addx 8
    noop
    addx -1
    addx 2
    addx 1
    noop
    addx 17
    addx -9
    addx 1
    addx 1
    addx -3
    addx 11
    noop
    noop
    addx 1
    noop
    addx 1
    noop
    noop
    addx -13
    addx -19
    addx 1
    addx 3
    addx 26
    addx -30
    addx 12
    addx -1
    addx 3
    addx 1
    noop
    noop
    noop
    addx -9
    addx 18
    addx 1
    addx 2
    noop
    noop
    addx 9
    noop
    noop
    noop
    addx -1
    addx 2
    addx -37
    addx 1
    addx 3
    noop
    addx 15
    addx -21
    addx 22
    addx -6
    addx 1
    noop
    addx 2
    addx 1
    noop
    addx -10
    noop
    noop
    addx 20
    addx 1
    addx 2
    addx 2
    addx -6
    addx -11
    noop
    noop
    noop
    """

    let input = """
    noop
    noop
    addx 5
    addx 3
    noop
    addx 14
    addx -12
    noop
    addx 5
    addx 1
    noop
    addx 19
    addx -15
    noop
    noop
    noop
    addx 7
    addx -1
    addx 4
    noop
    noop
    addx 5
    addx 1
    addx -38
    noop
    addx 21
    addx -18
    addx 2
    addx 2
    noop
    addx 3
    addx 5
    addx -6
    addx 11
    noop
    addx 2
    addx 19
    addx -18
    noop
    addx 8
    addx -3
    addx 2
    addx 5
    addx 2
    addx 3
    addx -2
    addx -38
    noop
    addx 3
    addx 4
    addx 5
    noop
    addx -2
    addx 5
    addx -8
    addx 12
    addx 3
    addx -2
    addx 5
    addx 11
    addx -31
    addx 23
    addx 4
    noop
    noop
    addx 5
    addx 3
    addx -2
    addx -37
    addx 1
    addx 5
    addx 2
    addx 12
    addx -10
    addx 3
    addx 4
    addx -2
    noop
    addx 6
    addx 1
    noop
    noop
    noop
    addx -2
    addx 7
    addx 2
    noop
    addx 3
    addx 3
    addx 1
    noop
    addx -37
    addx 2
    addx 5
    addx 2
    addx 32
    addx -31
    addx 5
    addx 2
    addx 9
    addx 9
    addx -15
    noop
    addx 3
    addx 2
    addx 5
    addx 2
    addx 3
    addx -2
    addx 2
    addx 2
    addx -37
    addx 5
    addx -2
    addx 2
    addx 5
    addx 2
    addx 16
    addx -15
    addx 4
    noop
    addx 1
    addx 2
    noop
    addx 3
    addx 5
    addx -1
    addx 5
    noop
    noop
    noop
    noop
    addx 3
    addx 5
    addx -16
    noop
    """

    func part1(input: String) -> Int {
        var X = 1
        var cycleCount = 0
        var signalStrength = 0
        let instructions = input.components(separatedBy: "\n")
        
        for i in 0..<instructions.count {
            let components = instructions[i].components(separatedBy: " ")
            
            switch components[0] {
            case "noop":
                if (cycleCount-19) % 40 == 0 {
                    signalStrength+=((cycleCount+1) * X)
                }
                cycleCount+=1
            case "addx":
                for j in 0..<2 {
                    if (cycleCount-19) % 40 == 0 {
                        signalStrength+=((cycleCount+1) * X)
                    }
                    if j == 1 {
                        X+=Int(components[1])!
                    }
                    cycleCount+=1
                }
            default:
                fatalError("Should not get here")
            }

        }
        print(cycleCount)
        return signalStrength
    }

    //part1(input: input)

    func part2(input: String) -> Int {
        var X = 1
        var cycleCount = 0
        var signalStrength = 0
        var spritePosition = 0...2
        var lineToPrint = ""
        let instructions = input.components(separatedBy: "\n")
        
        for i in 0..<instructions.count {
            let components = instructions[i].components(separatedBy: " ")
            
            switch components[0] {
            case "noop":
                if spritePosition.contains((cycleCount) % 40) {
                    lineToPrint+="#"
                } else {
                    lineToPrint+="."
                }
                cycleCount+=1
                if cycleCount % 40 == 0 {
                    print(lineToPrint)
                    lineToPrint = ""
                }
            case "addx":
                for j in 0..<2 {
                    if spritePosition.contains((cycleCount) % 40) {
                        lineToPrint+="#"
                    } else {
                        lineToPrint+="."
                    }
                    if j == 1 {
                        X+=Int(components[1])!
                        spritePosition = (X-1)...(X+1)
                    }
                    cycleCount+=1
                    if cycleCount % 40 == 0 {
                        print(lineToPrint)
                        lineToPrint = ""
                    }
                }
            default:
                fatalError("Should not get here")
            }

        }
        return signalStrength
    }

//    part2(input: input)

}
