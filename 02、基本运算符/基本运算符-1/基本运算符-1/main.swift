//
//  main.swift
//  基本运算符-1
//
//  Created by chensongqi on 16/6/1.
//  Copyright © 2016年 chensongqi. All rights reserved.
//

import Foundation

/**
 *  1、赋值运算符  赋值运算（a = b），表示用b的值来初始化或更新a的值：
 */

let b = 10
var a = 5
a = b
print(a)

//与 C 语言和 Objective-C 不同，Swift 的赋值操作并不返回任何值
/*var c = 100
c = a = b; 这样会报错
 */

let (x,y) = (10,20)
print(x,y);

/**
 *  2、数值运算  + - * /     
    与 C 语言和 Objective-C 不同的是，Swift 默认不允许在数值运算中出现溢出情况。但你可以使用 Swift 的溢出运算符来达到你有目的的溢出（如a &+ b
 */

//加法运算符能够用来拼接两个字符串
let someString = "hello" + " world"
print(someString)


/**
 *  3、求余运算符  求余运算（a % b）是计算b的多少倍刚刚好可以容入a，返回多出来的那部分（余数）
 */

//不同于 C 语言和 Objective-C，Swift 中是可以对浮点数进行求余的。

let someA = 8 % 2.5  // 等于 0.5
print(someA)



/**
 *  4、自增和自增运算
       The ++ and —- operators have been deprecated Xcode 7.3
 */

/**
 *  5、复合赋值（Compound Assignment Operators）
 */


/**
 *  6、比较运算  Swift 也提供恒等===和不恒等!==这两个比较符来判断两个对象是否引用同一个对象实例。
 */



/**
 *  7、三元条件运算(Ternary Conditional Operator)
 */

var someTernary = 100;
someTernary = 100 > 10 ? 10 : 20;
print(someTernary)



/**
 *  8、区间运算符
 */

//闭区间运算符   （a...b）定义一个包含从a到b(包括a和b)的所有值的区间
for index in 1...5 {
    print("\(index) * 5 = \(index * 5)")
}

print("\n");
//半闭区间  （a..<b）定义一个从a到b但不包括b的区间
for someIndex in 1..<5 {
    print("\(someIndex) * 5 = \(someIndex * 5)")
}

/**
 *  9、逻辑运算  逻辑非（!a） 逻辑与（a && b）  逻辑或（a || b）
 */
