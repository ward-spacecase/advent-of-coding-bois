//
//  Day11.swift
//  AOC
//
//  Created by Brayden Lemke on 12/11/22.
//

import Foundation

var day11Input = """
Monkey 0:
  Starting items: 72, 64, 51, 57, 93, 97, 68
  Operation: new = old * 19
  Test: divisible by 17
    If true: throw to monkey 4
    If false: throw to monkey 7

Monkey 1:
  Starting items: 62
  Operation: new = old * 11
  Test: divisible by 3
    If true: throw to monkey 3
    If false: throw to monkey 2

Monkey 2:
  Starting items: 57, 94, 69, 79, 72
  Operation: new = old + 6
  Test: divisible by 19
    If true: throw to monkey 0
    If false: throw to monkey 4

Monkey 3:
  Starting items: 80, 64, 92, 93, 64, 56
  Operation: new = old + 5
  Test: divisible by 7
    If true: throw to monkey 2
    If false: throw to monkey 0

Monkey 4:
  Starting items: 70, 88, 95, 99, 78, 72, 65, 94
  Operation: new = old + 7
  Test: divisible by 2
    If true: throw to monkey 7
    If false: throw to monkey 5

Monkey 5:
  Starting items: 57, 95, 81, 61
  Operation: new = old * old
  Test: divisible by 5
    If true: throw to monkey 1
    If false: throw to monkey 6

Monkey 6:
  Starting items: 79, 99
  Operation: new = old + 2
  Test: divisible by 11
    If true: throw to monkey 3
    If false: throw to monkey 1

Monkey 7:
  Starting items: 68, 98, 62
  Operation: new = old + 3
  Test: divisible by 13
    If true: throw to monkey 5
    If false: throw to monkey 6
"""

let testDay11Input = """
Monkey 0:
  Starting items: 79, 98
  Operation: new = old * 19
  Test: divisible by 23
    If true: throw to monkey 2
    If false: throw to monkey 3

Monkey 1:
  Starting items: 54, 65, 75, 74
  Operation: new = old + 6
  Test: divisible by 19
    If true: throw to monkey 2
    If false: throw to monkey 0

Monkey 2:
  Starting items: 79, 60, 97
  Operation: new = old * old
  Test: divisible by 13
    If true: throw to monkey 1
    If false: throw to monkey 3

Monkey 3:
  Starting items: 74
  Operation: new = old + 3
  Test: divisible by 17
    If true: throw to monkey 0
    If false: throw to monkey 1
"""

class Day11 {
    static var monkeys: [Int:Monkey] = [:]
    
    static func setupMonkeys(input: String) {
        let monkeys = input.components(separatedBy: "\n\n")
        for (i, monkey) in monkeys.enumerated() {
            let lines = monkey.components(separatedBy: "\n")
            var items: [Int] = []
            let stringLine1 = lines[1].components(separatedBy: " ")
            for j in 4..<stringLine1.count {
                let intComponents = stringLine1[j].components(separatedBy: ",")[0]
                items.append(Int(intComponents)!)
            }
            
            let stringLine2 = lines[2].components(separatedBy: " ")
            let mathSymbol = stringLine2[stringLine2.count-2]
            let secondNum = stringLine2[stringLine2.count-1] == "old" ? 0 : Int(stringLine2[stringLine2.count-1])!
            
            let stringLine3 = lines[3].components(separatedBy: " ")
            let testDivisor = Int(stringLine3[stringLine3.count-1])!
            
            let trueLine = lines[4].components(separatedBy: " ")
            let trueMonkey = Int(trueLine[trueLine.count-1])!
            
            let falseLine = lines[5].components(separatedBy: " ")
            let falseMonkey = Int(falseLine[falseLine.count-1])!
            
            Day11.monkeys[i] = Monkey(items: items, inspected: 0, operationSecondNumOld: secondNum == 0, mathSymbol: Character(mathSymbol), testDivisor: testDivisor, trueMonkey: trueMonkey, falseMonkey: falseMonkey)
            if secondNum != 0 {
                Day11.monkeys[i]?.secondNum = secondNum
            }
            
        }
    }
    
    static func printMonkeys() {
        for monkey in monkeys {
            print("monkey: \(monkey.key) \(monkey.value.items)")
            print(monkey.value)
        }
    }
    
    func run20Rounds() {
        let divider = Day11.monkeys.map { key, value in
            value.testDivisor
        }.reduce(1) { partialResult, b in
            partialResult*b
        }
        for i in 0..<10000 {
            for j in 0..<Day11.monkeys.count {
                for item in Day11.monkeys[j]!.items {
                    var worryLevel = Day11.monkeys[j]!.operation(old: item)
                    worryLevel%=divider
                    Day11.monkeys[j]!.test(firstNum: worryLevel, firstItem: item)
                    Day11.monkeys[j]!.inspected+=1
                }
            }
            for j in 0..<Day11.monkeys.count {
                print("\(i): \(Day11.monkeys[j]!.items) \(Day11.monkeys[j]!.inspected)")
            }
        }
        var topMonkey = 0
        var secondMonkey = 0
        for i in 0..<Day11.monkeys.count {
            let inspected = Day11.monkeys[i]!.inspected
//            print("\(i): \(inspected)")
            if secondMonkey < inspected {
                if topMonkey < inspected {
                    secondMonkey = topMonkey
                    topMonkey = inspected
                } else {
                    secondMonkey = inspected
                }
            }
        }
        print(topMonkey)
        print(secondMonkey)
        print("Monkey Business: \(topMonkey*secondMonkey)")
    }
    
    class Monkey {
        lazy var items: [Int] = []
        var inspected: Int = 0
        var operationSecondNumOld: Bool
        var secondNum: Int?
        var mathSymbol: Character
        var testDivisor: Int
        var trueMonkey: Int
        var falseMonkey: Int
        
        init(items: [Int], inspected: Int, operationSecondNumOld: Bool, secondNum: Int? = nil, mathSymbol: Character, testDivisor: Int, trueMonkey: Int, falseMonkey: Int) {
            self.inspected = inspected
            self.operationSecondNumOld = operationSecondNumOld
            self.secondNum = secondNum
            self.mathSymbol = mathSymbol
            self.testDivisor = testDivisor
            self.trueMonkey = trueMonkey
            self.falseMonkey = falseMonkey
            self.items = items
        }
        
        func operation(old: Int) -> Int {
            if let secondNum = secondNum {
                return mathSymbol == "*" ? old * secondNum : old + secondNum
            } else {
                return mathSymbol == "*" ? old * old : old + old
            }
        }
        
        func test(firstNum: Int, firstItem: Int) {
            Day11.monkeys[firstNum % testDivisor == 0 ? trueMonkey : falseMonkey]!.items.append(firstNum)
            self.items.remove(at: 0)
        }
    }
}
