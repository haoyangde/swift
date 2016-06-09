//
//  main.swift
//  leiandjiegouti-1
//
//  Created by 好样的 on 16/6/9.
//  Copyright © 2016年 好样的. All rights reserved.
//

import Foundation

//类和结构体是人们构建代码所用的一种通用且灵活的构造体



//与其他编程语言所不同的是，Swift 并不要求你为自定义类和结构去创建独立的接口和实现文件。你所要做的是在一个单一文件中定义一个类或者结构体，系统将会自动生成面向其它代码的外部接口。


//结构体总是通过被复制的方式在代码中传递，因此请不要使用引用计数。

/**
*  1、定义
*/

struct Resolution {
    var width = 1
    var height = 2
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
    
}

/**
*  2、实例
*/

let someResolution = Resolution()
let someVideoModel = VideoMode()
//结构体和类都使用初始化器语法来生成新的实例。初始化器语法的最简单形式是在结构体或者类的类型名称后跟随一个空括弧，如Resolution()或VideoMode()。通过这种方式所创建的类或者结构体实例，其属均会被初始化为默认值。

/**
*  3、访问属性
*/

print("the width of someResolution is \(someResolution.width)")

/**
*  4、结构体类型的成员逐一初始化器
*/

let vga = Resolution(width: 320, height: 480)
//与结构体不同，类实例没有默认的成员逐一初始化器

/**
*  5、结构体和枚举是值类型，类是引用类型
*/

//值类型被赋予给一个变量，常数或者本身被传递给一个函数的时候，实际上操作的是其的拷贝。

/**
*  6、恒等运算符
*/

//如果能够判定两个常量或者变量是否引用同一个类实例将会很有帮助。
/**
*  请注意“等价于”(用三个等号表示，===) 与“等于”(用两个等号表示，==)的不同：

“等价于”表示两个类类型(class type)的常量或者变量引用同一个类实例。
“等于”表示两个实例的值“相等”或“相同”，判定时要遵照类设计者定义定义的评判标准，因此相比于“相等”，这是一种更加合适的叫法。
*/


/**
*  7、集合(Collection)类型的赋值和拷贝行为
*/

//Swift 中数组(Array)和字典(Dictionary)类型均以结构体的形式实现。然而当数组被赋予一个常量或变量，或被传递给一个函数或方法时，其拷贝行为与字典和其它结构体有些许不同。

//数组和结构体的行为描述与对NSArray和NSDictionary的行为描述在本质上不同，后者是以类的形式实现，前者是以结构体的形式实现。NSArray和NSDictionary实例总是以对已有实例引用,而不是拷贝的方式被赋值和传递。

//如果字典实例中所储存的键(keys)和/或值(values)是值类型(结构体或枚举)，当赋值或调用发生时，它们都会被拷贝。相反，如果键(keys)和/或值(values)是引用类型，被拷贝的将会是引用，而不是被它们引用的类实例或函数。字典的键和值的拷贝行为与结构体所储存的属性的拷贝行为相同。

var ages = ["Peter": 23, "Wei": 35, "Anish": 65, "Katya": 19]
var copiedAges = ages
copiedAges["Peter"] = 24
print(ages["Peter"])

//在Swift 中，数组(Arrays)类型的赋值和拷贝行为要比字典(Dictionary)类型的复杂的多。当操作数组内容时，数组(Array)能提供接近C语言的的性能，并且拷贝行为只有在必要时才会发生。

var a = [1,2,3]
var b = a
var c = a
a[0] = 42
print(a[0],b[0],c[0])//42 1 1

