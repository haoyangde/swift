//
//  main.swift
//  fushujiaoben-1
//
//  Created by chensongqi on 16/6/14.
//  Copyright © 2016年 chensongqi. All rights reserved.
//

import Foundation

//附属脚本允许你通过在实例后面的方括号中传入一个或者多个的索引值来对实例进行访问和赋值。语法类似于实例方法和计算型属性的混合。

struct TimesTables {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let threetTimesTable = TimesTables(multiplier: 3)
print("threetTimesTable[6] ：\(threetTimesTable[6])")


//根据使用场景不同附属脚本也具有不同的含义。
var numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
numberOfLegs["bird"] = 2
print(numberOfLegs)

//附属脚本允许任意数量的入参索引，并且每个入参类型也没有限制。


struct SomeStruct {
    var someValue1 = 10
    var someValue2 = 100
    subscript(index1: Int, index2: Int) -> Int {
        return someValue1 + someValue1 - index1 - index2;
    }
    
}


