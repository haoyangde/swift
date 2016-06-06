//
//  main.swift
//  闭包-1
//
//  Created by chensongqi on 16/6/6.
//  Copyright © 2016年 chensongqi. All rights reserved.
//

import Foundation

//闭包   闭包是自包含的函数代码块，可以在代码中被传递和使用。

//闭包可以捕获和存储其所在上下文中任意常量和变量的引用。 这就是所谓的闭合并包裹着这些常量和变量，俗称闭包。Swift 会为您管理在捕获过程中涉及到的所有内存操作。


/**
 *  闭包采取如下三种形式
 全局函数是一个有名字但不会捕获任何值的闭包
 嵌套函数是一个有名字并可以捕获其封闭函数域内值的闭包
 闭包表达式是一个利用轻量级语法所写的可以捕获其上下文中变量或常量值的匿名闭包
 
 */


/**
 *  闭包表达式
 
 
 { (parameters) -> returnType in
 statements
 }
 
 
 */

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}

print(names.sort())

var result1 = names.sort(backwards)
print(result1)

//根据上下文推断类型（Inferring Type From Context）

result1 = names.sort({ (s1, s2) -> Bool in
   return  s1 < s2
})
print("根据上下文推断类型 \(result1)")


//单表达式闭包隐式返回（Implicit Return From Single-Expression Clossures）


result1 = names.sort({ (s1, s2) -> Bool in
    s1 < s2
})
print("单表达式闭包隐式返回 \(result1)")


//参数名称缩写
result1 = names.sort({$0 > $1})
print("参数名称缩写 \(result1)")

//运算符函数
result1 = names.sort(>)
print("运算符函数 \(result1)")


/**
 *  尾随闭包  如果需要将一个很长的闭包表达式作为最后一个参数传递给函数，可以使用尾随闭包来增强函数的可读性。
 */

func someFunctionThatTakesAClosure(closure: ()->()) {
    closure()
}

someFunctionThatTakesAClosure () {
    print("尾随闭包的演示")
}


/**
 *  捕获值（Capturing Values）
    闭包可以在其定义的上下文中捕获常量或变量。 即使定义这些常量和变量的原域已经不存在，闭包仍然可以在闭包函数体内引用和修改这些值。
 */

func makeIncrementor(forIncrement amoutn: Int) -> () -> Int {
    var runningTotal = 0
    func incrementor () -> Int {
        runningTotal += amoutn
        return runningTotal
    }
    return incrementor
}

var incrementByTen = makeIncrementor(forIncrement: 10)
var value1 = incrementByTen()
print("value1 = \(value1)")

var value2 = incrementByTen()
print("value2 = \(value2)")

var incrementByTen2 = incrementByTen
var value3 = incrementByTen2()
print("value3 = \(value3)")

//incrementor 会对  runningTotal 进行捕获


//闭包是引用类型（Closures Are Reference Types）

































