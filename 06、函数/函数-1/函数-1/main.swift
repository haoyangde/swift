//
//  main.swift
//  函数-1
//
//  Created by chensongqi on 16/6/3.
//  Copyright © 2016年 chensongqi. All rights reserved.
//

import Foundation

//函数是执行特定任务的代码自包含块。给定一个函数名称标识, 当执行其任务时就可以用这个标识来进行"调用"。

/**
 *  1、函数的声明与调用
 */

func sayHello(personName: String) -> String {
    let greeting = "Hello, " + personName + "!"
    return greeting;
}

print(sayHello("Mike"))



/**
 *  2、函数的参数和返回值
 */

//多输入参数
func halfOpenRangeLength(start: Int, end: Int) -> Int {
    return end - start;
}
print(halfOpenRangeLength(1, end: 10))


//无参函数
func sayHelloWorld() -> String {
    return "hello, world"
}
print(sayHelloWorld())

//没有返回值的函数  严格地说，sayGoodbye功能确实还返回一个值，即使没有返回值定义。函数没有定义返回类型但返 回了一个void返回类型的特殊值。它是一个简直是空的元组，实际上零个元素的元组，可以写为（）。

func sayGoodBye(personName: String) {
    print("Goodbye, \(personName) !")
}
sayGoodBye("Dave")


//多返回值函数
func someCount(string: String) -> (vowels:Int, consonants:Int, others:Int) {
    var vowels = 0, consonants = 0, others = 0
    for character in string.characters {
        switch String(character).lowercaseString {
        case "a", "e", "i", "o", "u":
            vowels += 1
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
             "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
            consonants += 1
        default:
            others += 1
        }
    }
    return (vowels, consonants, others)
}

let total = someCount("some arbitrayr string !")
print("\(total.vowels) vowels and \(total.consonants) consonants")


//外部参数名
func someFunction1(externalParameterName localParameterName: Int) {
    print(localParameterName + 1);
}
someFunction1(externalParameterName: 100)

//外部参数名称速记 (已取消 #)

//参数的默认值
func joinFunction(string s1: String, toString s2: String, withJoiner joiner:String = "默认参数") -> String {
    return s1 + joiner + s2
}
print(joinFunction(string: "test", toString: "1"))
print(joinFunction(string: "test", toString: "2", withJoiner: "替换"))


//可变参数
func arithmeticMean(numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

print(arithmeticMean(1,2,3,4,5))


//常量参数和变量参数





