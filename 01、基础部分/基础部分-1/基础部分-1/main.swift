//
//  main.swift
//  基础部分-1
//
//  Created by chensongqi on 16/6/1.
//  Copyright © 2016年 chensongqi. All rights reserved.
//

import Foundation

/**
 *  1、常量和变量
 */

let someLet = 100; //定义常量
var someVar = 200; // 定义变量
print(someLet,someVar);

/**
 *  2、类型标注
 */

var welcomeMessage: String = "hello world"; //冒号代表着“是...类型”
print(welcomeMessage);


/**
 *  3、变量的命名
 *   可以以用任何你喜欢的字符作为常量和变量名，包括 Unicode 字符：
*/

/**
 *  4、注释  注释可以嵌套
 */

/**
 *  5、整数  Int 是结构体类型
 */
let minIntValue = Int.min;
let maxUIntValue = UInt.max;
print(minIntValue,maxUIntValue);

/**
 *  6、浮点数  Double Float
 */

/**
 *  7、类型安全和类型推测
    Swift 是一个类型安全(type safe )的语言。类型安全的语言可以让你清楚地知道代码要处理的值的类型。
    SomeType(ofInitialValue)是调用 Swift 构造器并传入一个初始值的默认方法。
 */

/**
 *  8、类型别名  typealias
 */

typealias AudioSample = UInt16;
var someAudioSample: AudioSample = 100;
print(someAudioSample);


/**
 *  9、布尔值   ture  false  if判断中的必须是布尔值
 */
var orangesAreOrange = true
orangesAreOrange = Bool(-1)
//orangesAreOrange = 1; 这样写会报错
let turnipsAreDelicious = false
print(orangesAreOrange,turnipsAreDelicious)


/**
 *  10、元组（tuples）把多个值组合成一个复合值。元组内的值可以使任意类型，并不要求是相同类型。
 */

var http404Error = (404,"Not Found");
//元组分解
var (statusCode,stateMessage) = http404Error;
print("The status code is\(statusCode) stateMessage is \(stateMessage)")
var (statusCode2,_) = http404Error;
print("The status2 code is\(statusCode) stateMessage is \(stateMessage)")

//下标
print("The status code is \(http404Error.0)")

//定义元组的时候给单个元素命名
var http200Status = (statusCode3: 200, description: "OK");
print("the http200Status description is \(http200Status.description)")

/**
 *  11、可选类型  可选（optionals）来处理值可能缺失的情况。可以给可选变量赋值为nil来表示它没有值：
 
 注意：
 使用!来获取一个不存在的可选值会导致运行时错误。使用!来强制解析值之前，一定要确定可选包含一个非nil的值。
 
 */
let possibleNumber: String = "123"
let convertedNumber = Int(possibleNumber);
print(convertedNumber) //Optional(123)
print(convertedNumber!) //123

//可选绑定
if let actualNumber = Int(possibleNumber) {
    print("\(possibleNumber) has an integer value of \(actualNumber)")
} else {
    print("\(possibleNumber) could not be converted to an integer")
}

//隐式解析可选
//这种类型的可选被定义为隐式解析可选（implicitly unwrapped optionals）。把想要用作可选的类型的后面的问号（String?）改成感叹号（String!）来声明一个隐式解析可选。

let possibleString: String? = "An optional string"
print(possibleString!) //需要惊叹号来获取值

var assumedString :String! = "An implicitly unwrapped"
print(assumedString)
//注意： 如果你在隐式解析可选没有值的时候尝试取值，会触发运行时错误。和你在没有值的普通可选后面加一个惊叹号一样。
//fatal error: unexpectedly found nil while unwrapping an Optional value
/*assumedString = nil;
print(assumedString)
 if assumedString {
    print(assumedString)
 }
 */




/**
 *  13、断言
 */
let age = 3;
assert(age >= 0,"触发断言")

