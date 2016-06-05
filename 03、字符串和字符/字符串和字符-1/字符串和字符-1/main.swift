//
//  main.swift
//  字符串和字符-1
//
//  Created by chensongqi on 16/6/2.
//  Copyright © 2016年 chensongqi. All rights reserved.
//

import Foundation

//String 是有序的Character（字符）类型的值的集合
//每一个字符串都是由独立编码的 Unicode 字符组成，并提供了以不同 Unicode 表示（representations）来访问这些字符的支持。

/**
 *  1、字符串是值类型
    如果创建了一个新的字符串，那么当其进行常量、变量赋值操作或在函数/方法中传递时，会进行值拷贝。 任何情况下，都会对已有字符串值创建新副本，并对该新副本进行传递或赋值操作
 */

/**
 *  2、使用字符（Working with Characters）
 */

for character in "Hello world".characters { //SequenceType 协议
    print(character)
}

/** 
 *  3、计算字符数量 (Counting Characters)  不同的 Unicode 字符以及相同 Unicode 字符的不同表示方式可能需要不同数量的内存空间来存储。所以 Swift 中的字符在一个字符串中并不一定占用相同的内存空间。
    http://stackoverflow.com/questions/29575140/string-length-in-swift-1-2-and-swift-2-0
 */

var someString = "Hello world"
//直接使用
print("someString 字符数量：\(someString.characters.count)")
print("第二种计算方法： \(NSString(string: someString).length)")
print("第三种计算方法：\(someString.endIndex)")

//间接的
extension String {
    var length: Int {
        return (self as NSString).length
        //return characters.count
    }
}
print("someStrng --- \(someString.length)")

/**
 *  3、连接字符串和字符 (Concatenating Strings and Characters)
 */
let someString1 = "hello"
let someString2 = "world"

var someString3 = someString1 + " " + someString2;
print(someString3)


/**
 *  4、字符串插值 (String Interpolation)
 */

let multiplier = 3
let message = "\(multiplier) 乘以 2.5 是 \(Double(multiplier) * 2.5)"
print(message)

/**
 *  5、比较字符串（字符串相等、前缀相等和后缀相等）
 */
var quotation = "我们是一样滴"
var sameQuotation = "我们是一样一样滴"
if quotation == sameQuotation {
    print("这两个字符串是一样的")
} else {
    print("这两个字符串是不一样的")
}

if quotation.hasPrefix("我们") {
    print("同样的前缀")
}

if quotation.hasSuffix("一样滴") {
    print("同样的后缀")
}

let normal = "Could you help me, please?"
print("字符串 大写：\(normal.uppercaseString)  小写：\(normal.lowercaseString)")

/**
 *  6、 Unicode
    Unicode 是一个国际标准，用于文本的编码和表示。 它使您可以用标准格式表示来自任意语言几乎所有的字符，并能够对文本文件或网页这样的外部资源中的字符进行读写操作。
 

 */


