//
//  Day12.swift
//  AOC
//
//  Created by Brayden Lemke on 12/12/22.
//

import Foundation


var day12Input = """
abccccaaacaccccaaaaacccccccaaccccccccaaaaaaccccccaaaaaccccccccccaaaaaaaaacccccccaaaaaaaaaaaaaaccaaaaaccccccccccccaccacccccccccccccccccccccccccccccccccccccccaaaaaa
abccaacaaaaaccaaaaacccccaaaaaccccccccaaaaaaccccccaaaaaacccccccccaaaaaaaaaaaaacccaaaaaaaaaaaaaaaaaaaaaccccccccccccaaaacccccccccccccccccccccccccccccccccccccccaaaaaa
abccaaaaaaaaccaaaaaacccccaaaaaccccccaaaaaaaacccccaaaaaaccccccccccaaaaaaaaaaaacccaaaaaacaaaaaacaaaaaaaaccccccccccaaaaacccccaccccccccccccccccccaaacccccccccccccaaaaa
abcccaaaaaccccccaaaacccccaaaaacccccaaaaaaaaaaccccaaaaaacccccccccaaaaaaaaaaaaaacaaaaaaaaaaaaaacaaaaaaaaccccccccccaaaaaacccaaacccccccccccccccccaaaccccccccccccccaaaa
abaaacaaaaacccccacccccccaaaaaccccccaaaaaaaaaaccccccaaaccccccccccaaaaaaaaacaaaaaaaaaaaaaaaaaaacccaaacaccaaaccccccaaaaaaaacaaacccccccccccaaccccaaacccccccccccccccaac
abaaacaacaaaaccccccccccccccaaccccccacaaaaacccccaacccccccccccccccaaaacaaaaaaaaaacccaacccaaacaacccaaccccaaaaccccccccaacaaaaaaaaaaccccccccaaaaccaaaccccccccccccccaaac
abaaccaaccaaacacccccccccccccccccccccccaaaacccaaaaaaccaaaccccccccccaacaaaaaaaaaacccaaccccccccccccccccccaaaaccccccccccccaaaaaaaaaccccccciiiiiaaaaacccccccccccccccccc
abaaccccaaaaaaaacccccccccccccccccccccccaaccccaaaaaaccaaaaaccccacccaaccaaacaaaaacccccccccccccccaacccccccaaaccccccccccccccaaaaacccccccciiiiiiiiaaaaaccccccaaaccccccc
abaaacccaaaaaaaacccccccccccccccccccccccccccccaaaaaacaaaaaccccaaaaaaaccaaccaaacccccccaaaaacacccaaccccccccccaacccccccccccaaaaaaccccccciiiiiiiiijjaaaaaccccaaacaccccc
abaaaccccaaaaaaccccccccccccccccccccaaccccccccaaaaaccaaaaacccccaaaaaaaaccccccccccccccaaaaaaaaaaaaccccccccccaaacaaccccccaaaaaaaccccccciiinnnnoijjjjjjjjjjaaaaaaacccc
abccccccccaaaaacccccaacccccccccccaaaacccccccccaaaacccaaaaaccccaaaaaaaaacccccccccccccaaaaaaaaaaaaaaccccccccaaaaaacccaacaaacaaacccccchhinnnnnoojjjjjjjjjkkaaaaaacccc
abcccccccaaaaaacaaacaacccccccccccaaaaaaccccccccccccccaacccccccaaaaaaaaacaaccccccccccaaaaaaaaaaaaaaacccccaaaaaaacccaaaaccccccacaaccchhinnnnnoooojjjjjjkkkkaaaaccccc
abaacccaccaaaccccaaaaaccccccccccccaaaaccccccccccccccccccccccccaaaaaaaacaaaaaaaccccccaaaaaaaaaaaaaaacccccaaaaaaacccaaaaccccaaacaaachhhnnntttuooooooooppkkkaaaaccccc
abaacccaaaaaaaccccaaaaaacccccccccaaaaaccccccccccccccccccccccccaaaaaaacccaaaaacccccccccaaacaaaaaaaaccccccccaaaaacccaaaacccccaaaaacchhhnnnttttuooooooppppkkkaaaccccc
abaacccaaaaaaccccaaaaaaacccccccccaacaaccccccccccccccccccccccaaaccaaaccaaaaaaacccccccccccccaaaaaaaccccccaacaacaaacccccccccccaaaaaahhhhnntttttuuouuuuupppkkkcccccccc
abaaaacaaaaaaaaaaaaaaacccccccccccccccccccccccccccccccccccccaaaacccaaacaaaaaaaaccccccccccccaccaaaccccccaaacaaccccccccccccccaaaaaahhhhnnntttxxxuuuuuuupppkkkcccccccc
abaaaacaaaaaaaaaaacaaacccaaacccccccccccccccccccccacccccccccaaaacccccccaaaaaaaaccccccccccccccccaaacccccaaacaaacccccccccccccaaaaaahhhhmnnttxxxxuuyuuuuuppkkkcccccccc
abaaaccaaaaaaaaccccaaaccccaaaccacccccccccccaaaaaaaaccccccccaaaacccccccccaaacaacccccccccccccccccccccaaaaaaaaaacccccacccccccaacaghhhmmmmtttxxxxxxyyyuupppkkccccccccc
abaaccaaaaaaaccccccccccccaaaaaaaacccccccccccaaaaaaccccccccccccccccccccccaaccccccaacccccccccccccccccaaaaaaaaacccccaaccccccccccagggmmmmttttxxxxxyyyyvvppkkkccccccccc
abaacccaccaaacccccccccccaaaaaaaaccccccccccccaaaaaaccccccccccccccccccccccccccaaacaaaccccccccccccccccccaaaaaccccaaaaacaacccccccgggmmmmttttxxxxxyyyyvvpppiiiccccccccc
SbaaaaaccccaaccccccccccaaaaaaaaacacccccccccaaaaaaaacccccccccccccccaacccccccccaaaaaccccccccccaaaacccccaaaaaacccaaaaaaaaccaaaccgggmmmsssxxxEzzzzyyvvvpppiiiccccccccc
abaaaaaccccccccccccccccaaaaaaaaaaaaaaaaaccaaaaaaaaaacccccccccccaaaaacccccccccaaaaaaaccccccccaaaaaccccaaaaaaaccccaaaaacccaaaaagggmmmsssxxxxxyyyyyyvvqqqiiiccccccccc
abaaaaacccccccccccccccccaaaaaaaacaaaaaacccaaaaaaaaaaccccccccccccaaaaacccccccaaaaaaaacccccccaaaaaaccccaaacaaacccaaaaacccaaaaaagggmmmssswwwwwyyyyyyyvvqqqiiicccccccc
abaaaaccccccccccccccccccccaaaaaaaaaaaaacccacacaaacccccccccccccccaaaaacccccccaaaaaaaacccccccaaaaaaccccacccccccccaacaaaccaaaaaagggmmmsssswwwwyyyyyyyvvvqqiiicccccccc
abaaaaacccccccccccccccccccaacccaaaaaaaaaccccccaaaccccccccccccccaaaaaccccccccaacaaacccccccccaaaaaacccccccccccccccccaaccccaaaaagggmmmmssssswwyywwvvvvvvqqiiicccccccc
abaaaaaccccccccccccccccccaaacccaaaaaaaaaacccccaaaccccccaacccccccccaaccaaccccccaaaacaccccaacccaacccccccccccccccccccccccccaaaaccggglllllssswwwywwwvvvvqqqiiicccccccc
abaccccccccccccccccccccccccccccaaaaaaaaaaccccaaaacccaaaacccccccccccccaaaccccccaaaaaaaaaaaacccccccccccccccccccccccccccccccccccccffffllllsswwwwwwrrqvqqqqiiicccccccc
abccccccccccccccccccccccccccccccccaaacacaccccaaaacccaaaaaacccccccccaaaaaaaaccccaaaaaaaaaaaacccccccccccccccccccccccccccccccccccccfffflllssrwwwwrrrqqqqqqjjicccccccc
abcccccccaaaccccccccaaccccccccccccaaacccccccccaaaccccaaaaacccccccccaaaaaaaaccaaaaaaacaaaaaaacccccccccccccccccccccccccccccccccccccfffflllrrwwwrrrrqqqqjjjjjcccccccc
abaaaccaaaaacccccccaaacaaccccccccccaacccccccccccccccaaaaacccccccccccaaaaaacccaaaaaaaaaaaaaaaccccccccccccccccccccccccccccccccccccccffffllrrrrrrrkjjjjjjjjjcccaccccc
abaaaccaaaaaacccccccaaaaacaacaaccccccccccccccccccccccccaacccccccccccaaaaaacccaaaaaaaaaaaaacccccccccccccccccccccccccccccccccccccccccfffllrrrrrrkkjjjjjjjcccccaccccc
abaaaccaaaaaacccccaaaaaaccaaaaacccccccccccccccccccccccccccccccccccccaaaaaacccccaaacaaaaaaacccccccccccccccccccccccccccccccccccccccccfffllkkrrrkkkjjddcccccccaaacccc
abaaaccaaaaaccccccaaaaaaaacaaaaaccccccccccccccccccccccccccccccccccccaaacaacccccaaaccccccaaaaccccaaaccccccccccccccccaaaccccccccccccccfeekkkkkkkkkdddddccccaaaaacccc
abaaacccaaaaccccccaacaaaaaaaaaaaccccccccccccccccccccccccccccccccccccccaacaacccccccccccccccaaccccaaaacccccccccccccccaaaacccccccccccccceeekkkkkkdddddddcccaaacaccccc
abaccccccccccccccccccaacccaaaaccccccccccccccccccccccccccccaaccaaccaacccaaaaccccccccccccaaaaaaaacaaaacccccccccccccccaaaacccaaaaacccccceeeekkkkdddddaaccccaacccccccc
abccccccccccccccccccaaccccccaaccccccccccccaaacccccccccccccaaaaaaccaaaacaaaaacccccccccccaaaaaaaacaaaccccccccccccccccaaaacccaaaaaccccccceeeeeeedddcacacccccccccccccc
abccccccccccccccccccccccccccccccccccccccccaaaacaacccccccccaaaaacccaaaaaaaaaaccccccccccccaaaaaacccccccccccccccccccccccccccaaaaaacccccccaeeeeeeddcccccccccccccccaaac
abccccccccccccccccccccccccccccccccccccccccaaaaaaacccccccccaaaaaaccaaaaaaaacaccccccaaacaaaaaaaacccccccccccccccccccccccccccaaaaaacccccccccceeeeaaccccccccccccccccaaa
abcccccccccccccccccccccccccccccccccccccccccaaaaaaccccccccaaaaaaaaccaaaaaaaccccccccaaaaaaaaaaaacccccccccccccccccccccccccccaaaaaacccccccccccccaaaccccccccccccccccaaa
abccccccccccccccccccccccccccccccccccccccaaaaaaaaccccaaaccaaaaaaaacaaaaaaaaaacccccccaaaaaaaccaacccccccccccccccccccccccccccccaacccccccccccccccaaaccccccccccccccaaaaa
abccccccccccccccccccccccccccccccccccccccaaaaaaaaacccaaaaccccaaccaaaaaaaaaaaaaccccaaaaaaaaaacccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccaaaaaa
"""

let day12PracticeInput = """
Sabqponm
abcryxxl
accszExk
acctuvwj
abdefghi
"""

struct Index: Hashable {
    var i: Int //Row
    var j: Int //Column
    var letter: Character
    var value: Int? {
        
        if (Character("a")...Character("z")).contains(letter) {
            return Int(bitPattern: UInt(letter.asciiValue!)) - 96
        } else if letter == "S" {
            return 1
        } else if letter == "E" {
            return 26
        } else {
            return nil
        }
    }
    
    init(i: Int, j: Int, letter: Character) {
        self.i = i
        self.j = j
        self.letter = letter
    }
}

struct Day12Part1 {
    
    func part1(input: String) {
        var G = GraphForLetterMaze(input: input)
        var bfs = BFSForLetterMaze(G: G, startIndex: G.startIndex!)
        print(bfs.distTo[G.endIndex!])
    }
    
    func part2(input: String) {
        var G = GraphForLetterMaze(input: input)
        var champion = Int.max
        for (key, value) in G.adjEdges {
            if key.letter == "a" {
                let bfs = BFSForLetterMaze(G: G, startIndex: key)
                if let possibleChampion = bfs.distTo[G.endIndex!] {
                    if champion > possibleChampion {
                        champion = possibleChampion
                    }
                }
            }
        }
        print(champion)
    }
    
    class GraphForLetterMaze {
        var V: Int = 0
        var E: Int = 0
        var adjEdges: [Index: [Index]] = [:]
        var startIndex: Index?
        var endIndex: Index?
        
        init(input: String) {
            let lines = input.components(separatedBy: "\n")
            var grid: [[Index]] = Array(repeating: [], count: lines.count)
            
            //Create the initial grid
            for (i, line) in lines.enumerated() {
                let characters = line.map({Character(extendedGraphemeClusterLiteral: $0)})
                for(j, char) in characters.enumerated() {
                    let index = Index(i: i, j: j, letter: char)
                    grid[i].append(index)
                    V+=1
                    if index.letter == "S" {
                        startIndex = index
                    } else if index.letter == "E" {
                        endIndex = index
                    }
                }
            }
            
            //Establish adjEdges
            
            for i in 0..<grid.count {
                for j in 0..<grid[i].count {
                    adjEdges[grid[i][j]] = []
                    if let currentGridValue = grid[i][j].value {
                        if i != 0 && grid[i-1][j].value! - currentGridValue < 2 {
                            adjEdges[grid[i][j]]?.append(grid[i-1][j])
                            E+=1
                        }
                        if j != grid[i].count-1 && grid[i][j+1].value! - currentGridValue < 2 {
                            adjEdges[grid[i][j]]?.append(grid[i][j+1])
                            E+=1
                        }
                        if i != grid.count-1 && grid[i+1][j].value! - currentGridValue < 2 {
                            adjEdges[grid[i][j]]?.append(grid[i+1][j])
                            E+=1
                        }
                        if j != 0 && grid[i][j-1].value! - currentGridValue < 2 {
                            adjEdges[grid[i][j]]?.append(grid[i][j-1])
                            E+=1
                        }
                    }
                }
            }
            
        }
    }
    
    class BFSForLetterMaze {
        var marked: [Index: Bool] = [:]
        var distTo: [Index: Int] = [:]
        var edgeTo: [Index: Index] = [:]
        
        init(G: GraphForLetterMaze, startIndex: Index) {
            var queue: [Index] = []
            distTo[startIndex] = 0
            marked[startIndex] = true
            queue.append(startIndex)
            
            while(!queue.isEmpty) {
                let indexInQuestion = queue[0]
                queue.remove(at: 0)
                for index in G.adjEdges[indexInQuestion]! {
                    if marked[index] == nil {
                        edgeTo[index] = indexInQuestion
                        distTo[index] = distTo[indexInQuestion]! + 1
                        marked[index] = true
                        queue.append(index)
                    }
                }
            }
        }
        
        func pathTo(E: Index) -> [Index] {
            var indexes: [Index] = []
            
            var x = E
            
            while distTo[x] != 0 {
                indexes.insert(x, at: 0)
                x = edgeTo[x]!
            }
            
            indexes.insert(x, at: 0)
            
            return indexes
        }
    }
    
}


struct Day12Part2 {
    
    func part2(input: String) {
        var G = GraphForLetterMaze(input: input)
        var bfs = BFSForLetterMazeToGround(G: G, startIndex: G.endIndex!)
        print(bfs.distTo[bfs.groundIndex!])
    }
    
    class GraphForLetterMaze {
        var V: Int = 0
        var E: Int = 0
        var adjEdges: [Index: [Index]] = [:]
        var startIndex: Index?
        var endIndex: Index?
        
        init(input: String) {
            let lines = input.components(separatedBy: "\n")
            var grid: [[Index]] = Array(repeating: [], count: lines.count)
            
            //Create the initial grid
            for (i, line) in lines.enumerated() {
                let characters = line.map({Character(extendedGraphemeClusterLiteral: $0)})
                for(j, char) in characters.enumerated() {
                    let index = Index(i: i, j: j, letter: char)
                    grid[i].append(index)
                    V+=1
                    if index.letter == "S" {
                        startIndex = index
                    } else if index.letter == "E" {
                        endIndex = index
                    }
                }
            }
            
            //Establish adjEdges
            
            for i in 0..<grid.count {
                for j in 0..<grid[i].count {
                    adjEdges[grid[i][j]] = []
                    if let currentGridValue = grid[i][j].value {
                        if i != 0 && abs(grid[i-1][j].value! - currentGridValue) < 2 {
                            adjEdges[grid[i][j]]?.append(grid[i-1][j])
                            E+=1
                        }
                        if j != grid[i].count-1 && abs(grid[i][j+1].value! - currentGridValue) < 2 {
                            adjEdges[grid[i][j]]?.append(grid[i][j+1])
                            E+=1
                        }
                        if i != grid.count-1 && abs(grid[i+1][j].value! - currentGridValue) < 2 {
                            adjEdges[grid[i][j]]?.append(grid[i+1][j])
                            E+=1
                        }
                        if j != 0 && abs(grid[i][j-1].value! - currentGridValue) < 2 {
                            adjEdges[grid[i][j]]?.append(grid[i][j-1])
                            E+=1
                        }
                    }
                }
            }
            
        }
    }
    
    class BFSForLetterMazeToGround {
        var marked: [Index: Bool] = [:]
        var distTo: [Index: Int] = [:]
        var edgeTo: [Index: Index] = [:]
        var groundIndex: Index?
        
        init(G: GraphForLetterMaze, startIndex: Index) {
            var queue: [Index] = []
            distTo[startIndex] = 0
            marked[startIndex] = true
            queue.append(startIndex)
            
        outerLoop: while(!queue.isEmpty) {
                let indexInQuestion = queue[0]
                queue.remove(at: 0)
                for index in G.adjEdges[indexInQuestion]! {
                    if marked[index] == nil {
                        edgeTo[index] = indexInQuestion
                        distTo[index] = distTo[indexInQuestion]! + 1
                        marked[index] = true
                        queue.append(index)
                        if index.letter == "a" {groundIndex = index; break outerLoop}
                    }
                }
            }
        }
        
        func pathTo(E: Index) -> [Index] {
            var indexes: [Index] = []
            
            var x = E
            
            while distTo[x] != 0 {
                indexes.insert(x, at: 0)
                x = edgeTo[x]!
            }
            
            indexes.insert(x, at: 0)
            
            return indexes
        }
    }
    
}
