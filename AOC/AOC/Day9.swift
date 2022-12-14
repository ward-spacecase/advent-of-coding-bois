//
//  main.swift
//  AOC
//
//  Created by Brayden Lemke on 12/10/22.
//

import Foundation


let testInput = """
R 4
U 4
L 3
D 1
R 4
D 1
L 5
R 2
"""

//L 4
//U 2
//R 1
//D 4
//L 3
//U 1
//R 3

let secondTestInput = """
R 5
U 8
L 8
D 3
R 17
D 10
L 25
U 20
"""

let input = """
U 2
L 2
U 1
R 2
D 2
L 1
R 1
U 2
D 1
L 2
D 2
R 2
D 1
L 1
U 2
D 2
R 1
U 1
L 1
D 1
L 1
R 2
U 1
D 2
U 2
D 1
L 1
D 1
L 2
R 2
D 2
R 1
D 2
R 1
D 2
R 1
U 2
L 1
U 2
R 2
D 2
U 1
R 1
L 2
D 1
L 1
R 1
D 2
R 2
L 1
R 2
U 1
L 2
R 1
D 1
R 2
U 2
R 2
L 1
U 2
R 1
L 1
U 2
R 2
D 2
U 1
L 2
D 2
R 1
L 2
D 2
L 2
R 1
L 1
U 2
D 1
U 1
D 1
L 1
D 2
U 1
L 2
R 2
D 1
U 1
D 2
L 2
D 1
R 1
U 2
D 2
L 2
R 2
U 1
D 1
U 1
L 1
D 2
R 1
D 2
U 1
D 2
U 2
L 2
R 2
D 2
R 1
U 2
R 2
L 2
U 1
L 3
U 3
D 1
U 2
R 1
U 3
R 2
U 3
D 1
R 1
U 2
D 2
U 2
D 2
R 2
U 3
D 1
L 1
R 2
U 2
L 3
U 3
D 2
L 3
U 3
R 2
D 3
L 3
U 2
D 2
U 3
R 1
D 1
R 2
U 3
D 3
R 3
D 2
L 3
D 2
R 3
D 1
R 2
U 1
D 3
R 2
D 1
U 3
L 1
U 2
L 1
R 3
D 1
L 1
D 1
R 2
U 2
R 1
D 1
R 2
D 1
R 3
L 3
U 1
R 2
U 1
L 1
D 1
U 3
D 1
L 1
R 1
U 1
D 3
U 1
R 3
U 1
L 1
D 2
R 2
U 1
R 1
L 2
R 1
U 2
L 3
R 3
L 1
R 3
D 3
U 3
R 1
U 2
L 2
D 2
R 3
L 2
R 3
U 1
L 1
R 2
D 2
R 3
U 2
D 3
R 2
L 1
D 3
R 2
L 3
U 2
L 1
U 2
R 1
U 2
D 1
L 2
U 3
R 1
U 4
R 1
U 4
R 1
L 1
D 3
L 3
R 3
U 4
L 1
R 2
D 4
U 2
L 3
U 1
R 4
D 1
L 1
U 4
D 4
L 3
R 2
D 4
R 4
D 1
U 2
L 4
U 3
D 2
L 4
D 2
L 4
U 2
D 4
L 1
D 2
U 4
L 2
U 1
D 3
U 4
D 2
L 1
R 2
L 4
U 4
L 3
R 4
D 3
R 4
D 2
L 3
U 2
L 3
U 1
D 3
L 4
R 2
D 2
L 1
U 2
R 2
L 1
D 2
U 3
L 1
U 1
L 4
U 4
L 2
R 1
U 1
R 4
L 4
D 2
L 4
D 4
L 3
U 4
D 4
L 2
U 1
L 1
R 1
L 4
U 4
L 2
D 1
R 2
D 2
L 2
R 2
L 1
U 3
L 1
U 2
D 2
R 2
D 3
L 4
R 2
L 3
R 3
U 3
L 5
U 1
D 3
L 1
U 5
L 3
U 4
L 4
R 5
D 5
R 1
L 3
D 1
U 5
R 3
U 4
D 4
U 1
D 4
U 4
R 4
U 4
R 4
U 5
R 3
D 3
L 1
D 3
U 4
R 2
U 2
R 2
U 2
L 3
R 4
L 2
D 5
U 4
D 4
L 4
R 4
U 5
R 1
D 4
L 4
U 1
L 2
U 3
D 1
R 5
U 4
D 5
L 5
D 2
L 1
U 3
D 4
R 4
L 2
R 4
D 3
R 5
L 4
R 1
D 3
L 2
R 5
D 3
R 1
U 1
L 5
D 1
U 4
L 2
U 4
D 5
L 4
D 5
L 2
D 3
R 5
L 2
D 1
R 5
D 1
L 2
U 1
D 1
L 3
R 4
L 1
D 1
U 3
D 1
R 2
D 5
R 3
D 5
L 2
D 2
U 5
D 3
R 5
D 3
R 4
U 2
L 5
R 2
D 5
R 1
U 5
R 6
D 6
U 2
R 3
L 2
U 4
R 1
D 6
L 3
U 5
R 2
L 6
U 1
D 5
L 3
R 3
U 5
L 1
R 3
U 3
L 3
R 6
D 6
L 3
U 2
R 1
L 4
R 5
L 6
R 4
D 6
U 6
L 6
U 2
L 4
D 6
R 2
D 2
R 3
D 2
L 1
U 4
R 4
D 1
R 2
L 1
D 5
L 6
U 6
D 2
L 2
D 1
U 3
D 1
L 4
U 5
R 6
U 5
L 2
R 6
D 5
R 3
L 4
U 6
L 3
D 6
L 4
R 5
L 5
R 4
D 4
L 5
R 3
U 6
D 6
L 3
D 6
U 1
D 5
L 5
R 3
L 4
R 1
L 1
U 3
D 6
U 6
R 2
D 1
U 2
L 1
R 5
U 1
L 5
U 3
R 3
D 3
L 4
D 6
U 1
R 5
L 3
U 5
R 2
U 5
L 3
D 6
R 6
D 2
R 5
U 3
D 6
U 7
R 7
L 7
U 2
L 6
U 2
R 5
L 7
U 2
D 5
U 2
R 2
U 2
L 1
D 5
U 5
R 2
U 6
R 2
D 3
R 1
D 4
L 3
R 5
U 7
D 6
U 5
D 2
L 5
U 5
L 5
R 7
U 3
L 7
U 7
L 3
U 5
D 7
L 4
D 6
L 2
U 7
D 1
L 6
R 6
D 7
U 5
L 2
D 7
U 1
D 5
L 2
U 2
D 1
U 7
R 1
D 3
L 4
D 5
R 4
L 6
R 1
L 1
D 2
R 5
U 4
L 2
D 7
R 1
U 3
L 2
U 3
L 2
U 6
D 1
U 3
L 2
U 4
R 3
L 7
D 7
R 6
L 1
R 3
U 1
R 3
D 5
R 2
U 4
R 1
U 1
L 6
D 7
U 5
D 1
R 2
U 1
L 6
R 6
U 6
D 1
U 4
D 4
U 4
L 2
D 5
U 4
R 4
U 7
D 4
U 5
D 5
U 8
L 6
U 5
L 1
D 5
R 1
D 7
L 8
U 4
R 7
U 7
D 4
L 4
U 7
D 1
R 4
L 2
U 2
R 7
L 1
R 2
L 2
R 1
L 3
D 7
L 3
D 7
U 6
L 1
D 4
U 2
D 8
R 4
D 2
R 7
L 8
U 5
L 7
U 5
R 1
D 4
R 8
L 2
R 7
L 4
U 6
R 3
D 6
L 8
R 5
U 5
R 1
D 3
U 8
R 3
D 5
L 1
D 2
R 8
D 3
R 6
L 2
R 1
U 5
R 5
U 7
L 3
R 3
L 8
D 5
L 2
D 3
L 5
D 6
L 5
U 2
R 3
U 5
R 7
D 2
U 5
R 2
D 3
L 5
R 1
U 7
L 5
D 5
R 4
U 6
D 8
R 2
D 4
L 3
R 4
D 1
L 7
U 8
L 3
U 6
D 6
L 4
D 1
U 6
L 4
R 2
L 5
D 5
L 5
D 6
R 2
U 1
L 7
R 4
D 9
U 1
L 3
D 7
L 9
D 3
U 9
L 6
D 6
U 5
D 5
R 2
D 8
R 2
D 1
U 9
D 7
R 2
D 3
U 1
L 3
D 5
R 3
L 6
D 7
U 2
R 8
U 2
L 6
D 4
L 5
R 5
L 6
D 5
L 1
U 8
D 1
L 9
D 6
R 5
D 4
U 2
R 9
D 1
U 4
D 1
U 7
L 4
R 4
D 8
U 3
R 7
L 1
D 4
L 9
U 7
L 6
R 2
L 6
D 4
L 8
U 8
L 2
R 1
L 9
D 9
L 2
U 7
L 5
D 2
U 1
L 6
D 6
L 1
R 8
D 3
R 8
L 6
U 7
D 9
U 7
L 7
D 4
R 8
D 3
R 9
L 1
U 4
L 2
R 9
L 3
D 9
R 7
D 3
U 4
D 9
R 4
L 6
U 9
D 7
U 8
D 7
L 1
R 2
U 3
D 7
U 5
R 4
L 8
D 9
L 1
U 9
L 1
D 1
L 2
U 2
R 8
D 6
L 4
U 9
L 3
R 9
U 4
L 5
R 6
U 6
D 6
L 5
D 4
L 9
R 1
L 3
D 8
L 1
R 2
D 8
U 10
L 1
D 8
L 4
U 7
D 4
R 10
D 5
L 5
U 10
R 3
U 6
L 10
R 2
U 5
R 7
L 5
R 6
U 4
D 8
U 8
D 7
R 8
U 3
D 7
R 4
D 4
L 8
R 2
U 9
R 1
L 7
R 6
D 2
U 9
R 4
D 9
R 7
D 6
U 3
L 4
D 9
L 9
D 8
L 4
R 4
U 6
D 2
U 3
D 1
L 1
R 10
L 1
D 2
R 4
U 6
L 3
D 4
L 4
D 1
L 9
D 8
R 5
D 3
U 2
D 9
R 10
D 10
R 10
U 5
D 4
R 4
D 4
L 8
D 4
R 10
D 9
L 8
D 1
R 1
D 8
L 1
D 8
R 4
U 8
R 4
U 4
L 4
U 8
D 4
L 8
D 3
U 3
R 5
D 9
L 10
R 8
U 5
L 4
U 8
R 6
D 3
L 8
U 11
D 4
R 3
L 5
D 10
U 11
D 2
L 5
D 4
R 4
D 5
R 11
L 7
U 9
R 6
L 7
D 6
R 4
D 4
U 9
R 6
D 2
U 3
D 8
L 6
U 6
R 11
U 10
R 6
L 5
R 4
D 1
L 10
R 5
U 4
R 3
D 4
U 9
R 8
D 4
U 11
L 2
D 9
U 5
R 3
D 4
R 6
U 11
R 4
D 2
L 1
R 1
U 4
L 5
U 9
L 8
R 6
D 11
L 4
D 5
L 11
D 7
U 11
D 3
U 3
L 5
R 9
D 2
L 9
R 7
L 3
D 7
L 10
D 1
L 5
U 8
D 1
L 5
U 11
D 8
R 6
D 9
U 2
D 11
R 8
U 5
D 6
R 1
U 7
D 10
L 8
D 2
L 7
D 9
R 12
U 11
R 8
D 9
R 1
D 10
L 3
R 10
D 9
L 2
R 3
D 6
L 12
U 3
R 2
U 11
R 8
L 12
D 9
R 10
L 2
D 6
L 8
U 4
R 5
U 8
L 11
R 7
D 3
L 2
R 2
U 4
R 12
L 8
U 1
R 5
L 9
D 7
R 9
D 8
L 2
R 12
L 5
D 6
R 10
U 11
R 12
L 9
D 5
L 7
U 7
R 9
L 10
R 11
U 11
D 8
L 3
U 10
D 1
R 11
L 7
R 5
L 11
D 6
U 5
D 5
U 12
D 7
L 1
R 3
D 8
L 10
R 2
D 10
R 12
U 10
R 7
U 12
R 11
U 5
D 12
R 6
D 1
U 2
L 8
R 7
D 12
U 5
R 10
L 2
R 3
D 10
U 2
L 8
D 6
R 12
L 5
R 7
U 1
R 2
L 5
D 1
U 12
L 2
U 6
D 8
U 3
D 11
L 5
R 6
L 10
U 9
D 6
R 5
L 4
R 6
L 9
D 12
U 7
L 2
D 6
L 1
U 1
R 7
L 13
D 8
U 4
L 5
D 11
U 12
R 5
U 7
D 5
L 4
D 9
L 9
U 1
L 9
U 1
L 2
U 13
L 2
R 11
L 7
R 8
U 11
D 13
U 10
R 5
U 5
L 6
R 7
D 5
L 1
R 5
U 6
D 13
U 4
L 10
U 6
L 3
U 7
R 6
U 4
L 11
U 7
L 6
R 13
U 10
R 11
D 11
U 9
D 2
U 4
R 9
L 11
R 7
U 1
L 5
U 8
D 5
L 12
U 3
D 7
L 2
R 6
L 4
D 12
U 5
R 12
L 13
D 6
U 3
L 11
R 4
L 3
R 8
U 12
D 11
U 3
R 10
U 12
L 7
D 10
R 1
U 5
L 1
U 13
D 12
U 1
L 2
R 12
D 13
R 2
D 6
L 12
U 10
R 14
U 14
R 2
D 4
L 10
R 7
U 14
L 5
D 7
L 12
R 2
D 9
R 8
D 2
R 4
U 5
L 9
R 13
L 14
R 1
U 8
R 12
U 10
D 2
R 5
U 8
D 4
U 9
D 3
R 5
D 7
L 8
R 11
D 2
U 11
L 4
R 2
U 2
D 10
U 14
L 3
R 3
D 3
R 14
L 2
R 6
D 9
U 1
L 14
R 9
L 7
R 10
U 7
L 14
R 11
L 11
D 10
R 11
U 13
L 2
D 7
L 4
D 10
L 10
R 12
D 7
R 14
L 13
D 8
R 5
L 12
D 6
R 5
D 3
U 6
L 10
D 6
R 8
U 9
R 4
D 7
R 6
D 12
R 5
D 6
L 14
U 12
L 10
U 14
D 12
L 12
R 2
U 14
R 14
D 11
R 14
U 12
D 2
U 10
R 4
U 7
D 9
U 10
D 12
U 8
D 10
L 3
R 8
L 5
D 2
R 6
L 1
D 8
U 3
L 4
U 3
R 5
L 10
D 10
U 14
D 2
U 3
R 13
L 7
R 12
L 10
R 14
D 4
L 10
R 3
U 14
L 2
D 15
R 14
D 2
R 14
L 12
D 10
R 3
D 2
L 3
R 3
D 5
L 2
R 1
L 5
D 14
L 8
R 10
L 14
D 8
L 8
D 8
R 15
D 12
U 7
D 13
L 13
U 4
L 7
U 13
R 7
U 12
R 1
D 7
R 5
L 10
R 11
L 15
D 13
L 8
D 12
U 15
L 11
R 10
U 13
R 12
U 6
R 11
D 13
R 8
D 15
L 2
D 5
U 11
R 5
L 13
D 4
R 15
D 13
R 10
L 10
U 1
R 11
U 3
R 5
D 11
U 5
R 6
U 6
D 14
L 2
R 14
U 2
R 1
L 11
U 15
R 2
D 10
L 5
D 3
U 4
D 9
U 2
L 13
R 2
D 7
R 15
D 1
U 9
R 15
L 5
D 4
L 10
D 16
U 8
R 11
L 12
U 5
L 16
R 1
D 10
R 11
L 16
D 4
U 8
D 7
U 13
D 3
R 5
U 9
R 6
U 12
D 4
U 15
L 5
U 15
L 6
U 12
R 8
L 3
R 2
U 3
L 3
R 10
L 11
U 6
D 11
L 4
R 6
D 8
U 14
L 5
D 13
R 13
D 9
L 10
D 16
R 14
L 6
D 7
U 2
L 11
D 14
R 4
U 6
R 7
L 13
U 6
L 8
D 13
R 4
U 13
L 15
U 16
L 8
D 14
L 3
R 7
D 3
U 9
D 7
U 12
R 4
D 3
U 11
D 7
L 9
U 6
L 5
U 12
D 6
R 5
D 9
U 14
D 9
R 6
U 16
R 11
U 16
L 15
R 15
U 10
L 13
D 12
R 4
D 5
L 5
U 1
D 11
R 10
U 7
R 13
U 6
L 6
D 5
R 13
U 13
D 3
U 11
L 4
R 5
U 4
D 5
L 17
R 2
L 12
R 10
L 17
U 1
R 11
D 12
L 10
U 8
L 15
R 8
U 9
L 17
D 13
L 5
R 7
L 1
D 8
R 6
D 1
U 3
D 10
R 6
L 6
U 15
R 1
U 17
L 17
R 4
U 4
R 10
U 12
L 5
D 12
R 14
D 17
R 1
U 1
R 9
U 2
D 4
R 17
L 9
D 5
U 2
L 7
D 8
R 11
U 12
D 13
R 16
L 15
D 15
L 2
R 10
D 16
R 13
D 2
R 6
D 16
L 8
D 2
L 10
U 7
L 14
R 16
L 5
D 5
R 10
L 2
U 13
R 10
L 9
U 1
L 10
R 10
U 14
D 6
R 11
D 4
R 12
D 4
L 1
D 14
L 2
U 3
L 15
U 9
D 12
R 13
D 14
R 5
L 6
D 14
R 14
L 16
R 7
U 7
L 14
R 11
U 9
D 11
U 9
L 10
R 13
L 4
R 12
U 15
R 9
D 10
U 3
R 7
U 1
R 6
D 17
U 16
D 4
R 12
U 3
R 18
D 17
L 8
U 11
D 6
L 9
R 17
L 14
D 1
L 2
D 6
U 13
L 3
R 18
D 4
L 13
U 7
D 6
U 11
L 11
U 8
R 10
L 15
U 4
D 6
R 18
U 17
R 16
D 11
U 5
R 16
L 5
D 16
U 1
R 9
L 10
U 7
R 17
U 8
L 7
R 14
L 11
R 9
D 8
R 9
U 1
R 14
L 15
U 6
L 4
R 3
L 15
U 15
D 17
U 12
D 14
R 13
U 11
D 10
U 16
L 8
R 11
U 6
D 11
U 9
R 15
L 12
U 6
L 13
U 12
R 3
U 16
L 2
U 15
L 15
R 4
D 5
R 8
D 9
L 8
U 7
R 2
D 10
L 12
R 1
U 11
R 17
U 18
D 6
L 12
U 2
R 2
U 14
D 17
L 7
R 12
U 13
D 18
L 8
R 4
U 10
R 10
L 8
U 4
L 1
U 15
L 6
D 6
L 10
R 12
D 2
R 10
U 16
L 12
D 1
R 11
D 10
U 19
R 7
D 18
U 1
D 7
R 3
U 19
R 12
U 5
L 11
U 8
D 12
R 2
D 16
U 14
R 14
D 1
U 17
L 15
D 8
L 18
D 2
L 14
U 10
L 17
D 2
U 14
L 17
U 15
R 18
L 11
R 15
U 4
L 8
D 10
L 17
U 13
R 1
L 10
U 16
R 9
L 4
D 13
R 13
U 10
R 12
L 14
U 10
D 5
R 18
L 8
D 8
R 5
D 19
U 10
R 8
U 12
R 12
D 6
U 7
L 2
U 5
L 6
R 1
D 16
R 16
U 15
R 2
D 15
R 2
D 10
L 4
D 8
R 17
D 6
R 7
U 10
R 8
D 16
R 3
D 17
R 11
D 18
L 3
R 11
D 8
R 14
D 7
U 14
R 12
L 2
R 18
L 6
R 2
D 3
R 18
"""

struct Point: Comparable, Hashable {
    var x: Int // Row
    var y: Int // Column
    
    static func < (lhs: Point, rhs: Point) -> Bool {
        if lhs.x < rhs.x {
            return true
        } else if lhs.y < rhs.y {
            return true
        } else {
            return false
        }
    }
    
    static func == (lhs: Point, rhs: Point) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
    
    static func != (lhs: Point, rhs: Point) -> Bool {
        return lhs.x != rhs.x || lhs.y != rhs.y
    }
}

struct Day9Part1 {
    private var visited: [Point: Int] = [Point(x: 0, y: 0): 1]
    private var commands: [String]
    private var hPosition: Point = Point(x: 0, y: 0)
    private var tPosition: Point = Point(x: 0, y: 0)
    
    init(input: String) {
        commands = input.components(separatedBy: "\n")
    }
    
    func printVisited() {
        for i in visited.keys {
            print("\(i): \(visited[i]!)")
        }
    }
    
    func numberOfSpacesVisitedByT() -> Int {
        return visited.count
    }
    
    mutating func runCourse() {
        for command in commands {
            let commandComponents = command.split(separator: " ")
            switch commandComponents[0] {
            case "R":
                moveRight(Int(commandComponents[1])!)
            case "L":
                moveLeft(Int(commandComponents[1])!)
            case "U":
                moveUp(Int(commandComponents[1])!)
            case "D":
                moveDown(Int(commandComponents[1])!)
            default:
                fatalError("Should not get here")
            }
        }
    }
    
    mutating private func moveRight(_ positionsToMove: Int) {
        guard positionsToMove > 0 else { return }
        hPosition.x = hPosition.x+1
        
        //Is H overlapping T?
        guard hPosition != tPosition else {
            moveRight(positionsToMove-1)
            return
        }
        
        //If T is not in range of H we need to Move T
        if !tInRangeOfH() {
            //Move it just to the left of h
            tPosition.y = hPosition.y
            tPosition.x = hPosition.x-1
            if let val = visited[tPosition] {
                visited[tPosition] = 1 + val
            } else {
                visited[tPosition] = 1
            }
        }
        
        moveRight(positionsToMove-1)
    }
    
    mutating private func moveLeft(_ positionsToMove: Int) {
        guard positionsToMove > 0 else { return }
        
        hPosition.x = hPosition.x-1

        //Is H overlapping T?
        guard hPosition != tPosition else {
            moveLeft(positionsToMove-1)
            return
        }

        //If T is not in range of H we need to Move T
        if !tInRangeOfH() {
            //Move it just to the right of h
            tPosition.y = hPosition.y
            tPosition.x = hPosition.x+1
            if let val = visited[tPosition] {
                visited[tPosition] = 1 + val
            } else {
                visited[tPosition] = 1
            }
        }
        
        moveLeft(positionsToMove-1)
    }
    
    mutating private func moveUp(_ positionsToMove: Int) {
        guard positionsToMove > 0 else { return }
        
        hPosition.y = hPosition.y+1
        
        //Is H overlapping T?
        guard hPosition != tPosition else {
            moveUp(positionsToMove-1)
            return
        }
        
        //If T is not in range of H we need to Move T
        if !tInRangeOfH() {
            //Move it just below h
            tPosition.x = hPosition.x
            tPosition.y = hPosition.y-1
            if let val = visited[tPosition] {
                visited[tPosition] = 1 + val
            } else {
                visited[tPosition] = 1
            }
        }
        
        moveUp(positionsToMove-1)
    }
    
    mutating private func moveDown(_ positionsToMove: Int) {
        guard positionsToMove > 0 else { return }
        hPosition.y = hPosition.y-1
        
        //Is H overlapping T?
        guard hPosition != tPosition else {
            moveDown(positionsToMove-1)
            return
        }
        
        //If T is not in range of H we need to Move T
        if !tInRangeOfH() {
            //Move T just above h
            tPosition.x = hPosition.x
            tPosition.y = hPosition.y+1
            if let val = visited[tPosition] {
                visited[tPosition] = 1 + val
            } else {
                visited[tPosition] = 1
            }
        }
        
        moveDown(positionsToMove-1)
    }
    
    private func tInRangeOfH() -> Bool {
        return abs(tPosition.x - hPosition.x) < 2 && abs(tPosition.y - hPosition.y) < 2
    }
}

//var test = Day9(input: testInput)
//test.runCourse()
//test.numberOfSpacesVisitedByT()
//test.printVisited()

//var part1 = Day9Part1(input: input)
//part1.runCourse()
//part1.numberOfSpacesVisitedByT()


struct Day9Part2 {
    private var visited: [Point: Int] = [Point(x: 0, y: 0): 1]
    private var commands: [String]
    private var rope: [Point] //rope[0] is H and rope[rope.count-1] is T
    
    init(input: String, lengthOfRope: Int) {
        commands = input.components(separatedBy: "\n")
        rope = Array(repeating: Point(x: 0, y: 0), count: lengthOfRope)
    }
    
    func printVisited() {
        for i in visited.keys {
            print("\(i): \(visited[i]!)")
        }
    }
    
    func numberOfSpacesVisitedByT() -> Int {
        return visited.count
    }
    
    mutating func runCourse() {
        for command in commands {
//            var toPrint = ""
//            for i in 0..<rope.count {
//                toPrint+="{ \(i)) x: \(rope[i].x) y: \(rope[i].y) }   "
//            }
//            print(toPrint)
            let commandComponents = command.split(separator: " ")
            switch commandComponents[0] {
            case "R":
                moveRight(Int(commandComponents[1])!)
            case "L":
                moveLeft(Int(commandComponents[1])!)
            case "U":
                moveUp(Int(commandComponents[1])!)
            case "D":
                moveDown(Int(commandComponents[1])!)
            default:
                fatalError("Should not get here")
            }
        }
    }
    
    mutating private func moveRight(_ positionsToMove: Int) {
        guard positionsToMove > 0 else { return }
        
        rope[0].x = rope[0].x+1
        
        for i in 0..<rope.count-1 {
            if !rope[i+1].pointOneSpaceAwayFrom(p: rope[i]) {
                
                let yDirection = rope[i].y - rope[i+1].y
                let yDistance = abs(yDirection)
                let xDirection = rope[i].x - rope[i+1].x
                let xDistance = abs(xDirection)
//                rope[i+1].x = rope[i+1].x+1
                
                    if yDirection > 0 {
                        //We are below our target
                        rope[i+1].y = rope[i+1].y+1
                    } else if yDirection < 0 {
                        //We are ubove our target
                        rope[i+1].y = rope[i+1].y-1
                    }

                

                    if xDirection > 0 {
                        rope[i+1].x = rope[i+1].x+1
                    } else if xDirection < 0 {
                        rope[i+1].x = rope[i+1].x-1
                    }

                
                
            } else {
                //Pretty sure we can stop the for loop if we don't move one of the Points
                break
            }
        }
        
        if visited[rope[rope.count-1]] == nil {
            visited[rope[rope.count-1]] = 1
        }
        
        moveRight(positionsToMove-1)
    }
    
    mutating private func moveLeft(_ positionsToMove: Int) {
        guard positionsToMove > 0 else { return }
        
        rope[0].x = rope[0].x-1
        
        for i in 0..<rope.count-1 {
            if !rope[i+1].pointOneSpaceAwayFrom(p: rope[i]) {
                let yDirection = rope[i].y - rope[i+1].y
                let yDistance = abs(yDirection)
                let xDirection = rope[i].x - rope[i+1].x
                let xDistance = abs(xDirection)
//                rope[i+1].x = rope[i+1].x+1
                
                    if yDirection > 0 {
                        //We are below our target
                        rope[i+1].y = rope[i+1].y+1
                    } else if yDirection < 0 {
                        //We are ubove our target
                        rope[i+1].y = rope[i+1].y-1
                    }

                

                    if xDirection > 0 {
                        rope[i+1].x = rope[i+1].x+1
                    } else if xDirection < 0 {
                        rope[i+1].x = rope[i+1].x-1
                    }

            } else {
                //Pretty sure we can stop the for loop if we don't move one of the Points
                break
            }
        }
        
        if visited[rope[rope.count-1]] == nil {
            visited[rope[rope.count-1]] = 1
        }
        
        moveLeft(positionsToMove-1)
    }
    
    mutating private func moveUp(_ positionsToMove: Int) {
        guard positionsToMove > 0 else { return }
        
        rope[0].y = rope[0].y+1
        
        for i in 0..<rope.count-1 {
            if !rope[i+1].pointOneSpaceAwayFrom(p: rope[i]) {
                let yDirection = rope[i].y - rope[i+1].y
                let yDistance = abs(yDirection)
                let xDirection = rope[i].x - rope[i+1].x
                let xDistance = abs(xDirection)
//                rope[i+1].x = rope[i+1].x+1
                

                    if yDirection > 0 {
                        //We are below our target
                        rope[i+1].y = rope[i+1].y+1
                    } else if yDirection < 0 {
                        //We are ubove our target
                        rope[i+1].y = rope[i+1].y-1
                    }

                

                    if xDirection > 0 {
                        rope[i+1].x = rope[i+1].x+1
                    } else if xDirection < 0 {
                        rope[i+1].x = rope[i+1].x-1
                    }

            } else {
                //Pretty sure we can stop the for loop if we don't move one of the Points
                break
            }
        }
        
        if visited[rope[rope.count-1]] == nil {
            visited[rope[rope.count-1]] = 1
        }
        
        moveUp(positionsToMove-1)
    }
    
    mutating private func moveDown(_ positionsToMove: Int) {
        guard positionsToMove > 0 else { return }
        
        rope[0].y = rope[0].y-1
        
        for i in 0..<rope.count-1 {
            if !rope[i+1].pointOneSpaceAwayFrom(p: rope[i]) {
                let yDirection = rope[i].y - rope[i+1].y
                let yDistance = abs(yDirection)
                let xDirection = rope[i].x - rope[i+1].x
                let xDistance = abs(xDirection)
//                rope[i+1].x = rope[i+1].x+1
                

                    if yDirection > 0 {
                        //We are below our target
                        rope[i+1].y = rope[i+1].y+1
                    } else if yDirection < 0 {
                        //We are ubove our target
                        rope[i+1].y = rope[i+1].y-1
                    }

                

                    if xDirection > 0 {
                        rope[i+1].x = rope[i+1].x+1
                    } else if xDirection < 0 {
                        rope[i+1].x = rope[i+1].x-1
                    }

            } else {
                //Pretty sure we can stop the for loop if we don't move one of the Points
                break
            }
        }
        
        if visited[rope[rope.count-1]] == nil {
            visited[rope[rope.count-1]] = 1
        }
        
        moveDown(positionsToMove-1)
    }
}

extension Point {
    func pointOneSpaceAwayFrom(p: Point) -> Bool {
        return abs(self.x - p.x) < 2 && abs(self.y - p.y) < 2
    }
}

//var part2 = Day9Part2(input: input, lengthOfRope: 10)
//part2.runCourse()
//part2.numberOfSpacesVisitedByT()
//part2.printVisited()


struct Day9Part2Faster {
    private var visited: Set<Point> = [Point(x: 0, y: 0)]
    private var commands: [String]
    private var rope: [Point] //rope[0] is H and rope[rope.count-1] is T
    
    init(input: String, lengthOfRope: Int) {
        commands = input.components(separatedBy: "\n")
        rope = Array(repeating: Point(x: 0, y: 0), count: lengthOfRope)
    }
    
//    func printVisited() {
//        for i in visited.keys {
//            print("\(i): \(visited[i]!)")
//        }
//    }
    
    func numberOfSpacesVisitedByT() -> Int {
        return visited.count
    }
    
    mutating func runCourse() {
        for command in commands {
//            var toPrint = ""
//            for i in 0..<rope.count {
//                toPrint+="{ \(i)) x: \(rope[i].x) y: \(rope[i].y) }   "
//            }
//            print(toPrint)
            let commandComponents = command.split(separator: " ")
            switch commandComponents[0] {
            case "R":
                moveRight(Int(commandComponents[1])!)
            case "L":
                moveLeft(Int(commandComponents[1])!)
            case "U":
                moveUp(Int(commandComponents[1])!)
            case "D":
                moveDown(Int(commandComponents[1])!)
            default:
                fatalError("Should not get here")
            }
        }
    }
    
    mutating private func moveRight(_ positionsToMove: Int) {
        guard positionsToMove > 0 else { return }
        
        rope[0].x = rope[0].x+1
        
        for i in 0..<rope.count-1 {
            if !rope[i+1].pointOneSpaceAwayFrom(p: rope[i]) {
                
                let yDirection = rope[i].y - rope[i+1].y
                let yDistance = abs(yDirection)
                let xDirection = rope[i].x - rope[i+1].x
                let xDistance = abs(xDirection)
//                rope[i+1].x = rope[i+1].x+1
                
                    if yDirection > 0 {
                        //We are below our target
                        rope[i+1].y = rope[i+1].y+1
                    } else if yDirection < 0 {
                        //We are ubove our target
                        rope[i+1].y = rope[i+1].y-1
                    }

                

                    if xDirection > 0 {
                        rope[i+1].x = rope[i+1].x+1
                    } else if xDirection < 0 {
                        rope[i+1].x = rope[i+1].x-1
                    }

                
                
            } else {
                //Pretty sure we can stop the for loop if we don't move one of the Points
                break
            }
        }
        
        visited.insert(rope[rope.count-1])
        
        moveRight(positionsToMove-1)
    }
    
    mutating private func moveLeft(_ positionsToMove: Int) {
        guard positionsToMove > 0 else { return }
        
        rope[0].x = rope[0].x-1
        
        for i in 0..<rope.count-1 {
            if !rope[i+1].pointOneSpaceAwayFrom(p: rope[i]) {
                let yDirection = rope[i].y - rope[i+1].y
                let yDistance = abs(yDirection)
                let xDirection = rope[i].x - rope[i+1].x
                let xDistance = abs(xDirection)
//                rope[i+1].x = rope[i+1].x+1
                
                    if yDirection > 0 {
                        //We are below our target
                        rope[i+1].y = rope[i+1].y+1
                    } else if yDirection < 0 {
                        //We are ubove our target
                        rope[i+1].y = rope[i+1].y-1
                    }

                

                    if xDirection > 0 {
                        rope[i+1].x = rope[i+1].x+1
                    } else if xDirection < 0 {
                        rope[i+1].x = rope[i+1].x-1
                    }

            } else {
                //Pretty sure we can stop the for loop if we don't move one of the Points
                break
            }
        }
        
        visited.insert(rope[rope.count-1])
        
        moveLeft(positionsToMove-1)
    }
    
    mutating private func moveUp(_ positionsToMove: Int) {
        guard positionsToMove > 0 else { return }
        
        rope[0].y = rope[0].y+1
        
        for i in 0..<rope.count-1 {
            if !rope[i+1].pointOneSpaceAwayFrom(p: rope[i]) {
                let yDirection = rope[i].y - rope[i+1].y
                let yDistance = abs(yDirection)
                let xDirection = rope[i].x - rope[i+1].x
                let xDistance = abs(xDirection)
//                rope[i+1].x = rope[i+1].x+1
                

                    if yDirection > 0 {
                        //We are below our target
                        rope[i+1].y = rope[i+1].y+1
                    } else if yDirection < 0 {
                        //We are ubove our target
                        rope[i+1].y = rope[i+1].y-1
                    }

                

                    if xDirection > 0 {
                        rope[i+1].x = rope[i+1].x+1
                    } else if xDirection < 0 {
                        rope[i+1].x = rope[i+1].x-1
                    }

            } else {
                //Pretty sure we can stop the for loop if we don't move one of the Points
                break
            }
        }
        
        visited.insert(rope[rope.count-1])
        
        moveUp(positionsToMove-1)
    }
    
    mutating private func moveDown(_ positionsToMove: Int) {
        guard positionsToMove > 0 else { return }
        
        rope[0].y = rope[0].y-1
        
        for i in 0..<rope.count-1 {
            if !rope[i+1].pointOneSpaceAwayFrom(p: rope[i]) {
                let yDirection = rope[i].y - rope[i+1].y
                let yDistance = abs(yDirection)
                let xDirection = rope[i].x - rope[i+1].x
                let xDistance = abs(xDirection)
//                rope[i+1].x = rope[i+1].x+1
                

                    if yDirection > 0 {
                        //We are below our target
                        rope[i+1].y = rope[i+1].y+1
                    } else if yDirection < 0 {
                        //We are ubove our target
                        rope[i+1].y = rope[i+1].y-1
                    }

                

                    if xDirection > 0 {
                        rope[i+1].x = rope[i+1].x+1
                    } else if xDirection < 0 {
                        rope[i+1].x = rope[i+1].x-1
                    }

            } else {
                //Pretty sure we can stop the for loop if we don't move one of the Points
                break
            }
        }
        
        visited.insert(rope[rope.count-1])
        
        moveDown(positionsToMove-1)
    }
}

//var faster = Day9Part2Faster(input: input, lengthOfRope: 10)
//let start = DispatchTime.now()
//faster.runCourse()
//let end = DispatchTime.now()
//print(faster.numberOfSpacesVisitedByT())
//print(Double(end.uptimeNanoseconds - start.uptimeNanoseconds) / 1_000_000_000)


