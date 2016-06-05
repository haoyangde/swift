//
//  main.swift
//  集合类型-1
//
//  Created by chensongqi on 16/6/2.
//  Copyright © 2016年 chensongqi. All rights reserved.
//

import Foundation


//Swift提供了两种集合类型来存放多个值——数组(Array)和字典(Dictionary)。数组把相同类型的值存放在一个有序链表里。字典把相同类型的值存放在一个无序集合里，这些值可以通过唯一标识符（也就是键）来引用和查找。


/**
 *  1、数组字面量
    Swift数组的类型是Array<SomeType>，这里的SomeType是某种数组能够存放的类型。
 */

var shopplingList: [String] = ["Eggs", "Milk"]

/**
 *  2、数组的存取与修改
 */
print("数组数量为：\(shopplingList.count)")

if shopplingList.isEmpty {
    print("shopplingList 数组为空")
} else {
    print("shopplingList 数组不为空")
}

//添加
shopplingList.append("Flour")
shopplingList += ["Baking Powder","Good","Job"]
print(shopplingList)

//下标语法
var firstItem = shopplingList[0]
print("第一个元素： \(firstItem)")

//修改
shopplingList[0] = "Six aggs"
shopplingList[2...4] = ["就这一个"]
print(shopplingList)
//注意： 不能使用下标语法添加新元素到数组末尾。如果试图使用超出数组范围的下标来取用或存放一个元素，会产生运行时错误。

//插入元素
shopplingList.insert("Test", atIndex: 0)
print(shopplingList)

var removeObject = shopplingList.removeAtIndex(0);
print(removeObject,shopplingList)

/**
 *  3、数组的迭代访问
 */

for item in shopplingList {
    print("itme = \(item)")
}

for (someIndex,someValue) in shopplingList.enumerate() {
    print("someIndex: \(someIndex), someValue\(someValue)")
}

/**
 *  4、数组创建与初始化
 */
var someInts: [Int] = []
print(someInts.count)


var threeDoubles = [Double](count: 3, repeatedValue: 0.0)
print(threeDoubles)



/**
 *  字典（Dictionary）
    字典是一种存储多个类型相同的值的容器。每个值都和一个唯一的键相对应，这个键在字典里就是其对应值的唯一标识。跟数组不同，字典里的元素并没有特定的顺序。
    Swift的字典类型是Dictionary<KeyType, ValueType>，其中KeyType是字典中键的类型，ValueType是字典中值的类型。
 

 */

var airports = ["TYO": "Tokyo", "DUB": "Dublin"]
print(airports)
/**
 *  1、字典的存取与修改
 */

print("The dictionary of airports contains \(airports.count) items.")
//添加元素
airports["LHR"] = "London"
print(airports)


//updateValue(forKey:)函数返回一个值的类型的可选值。 如果更新前该键的值存在，函数返回值就是该键更新前的值，如果不存在，函数返回值就是nil
let oldValue = airports.updateValue("Dublin new", forKey: "DUB")
print(oldValue,airports)

//下标语法取值
let someValue = airports["DUB"]
print(someValue)

//删除元素
airports["LHR"] = nil
print(airports)
airports["LHR"] = "London"
airports.removeValueForKey("LHR")
print(airports)

/**
 *  2、字典的迭代访问
 */

for (SomeKey,SomeValue) in airports {
    print("SomeKey: \(SomeKey), SomeValue: \(SomeValue)")
}


/**
 *  3、生成一个空字典
 */
var namesOfIntegers = Dictionary<Int,String>()
print(namesOfIntegers)
