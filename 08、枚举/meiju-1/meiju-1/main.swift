//
//  main.swift
//  meiju-1
//
//  Created by 好样的 on 16/6/9.
//  Copyright © 2016年 好样的. All rights reserved.
//

import Foundation

//枚举为一系相关联的值定义了一个公共的组类型

//枚举的名称应该是以一个大写字母开头，让他们是单数类型而不是复数类型
enum CompassPoint {
    case North
    case South
    case East
    case West
}

//多个成员还可以用一行来定义，他们之间用逗号分割:
enum Plant {
    case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

//一个switch语句被用到判断枚举值的时候，必须要包括所有的枚举成员。假设.West被忽略了，将会导致编译出错，因为它没有考虑到枚举的所有的枚举成员，我们需要全面性的确保枚举的所有成员不被忽略掉.


//关联值
enum Barcode {
    case UPCA(Int,Int,Int)
    case QRCode(String)
}

//Barcode类型的不可变变量以及可变变量可以存储.UPCA或者.QRCode类型(同时还有与其相关联的值)，但是每次都只能存储这两个类型当中的一个。
var productBarcode = Barcode.UPCA(8, 188, 399)
productBarcode = .QRCode("hello world")

switch productBarcode {
case let .UPCA(num1, num2, num3):
    print("UPCA num1 = \(num1)")
case let .QRCode(str):
    print("xxx \(str)")
}



//原始值
//原始值可以是字符串，字符或者其他任何的整型或者浮点型等数字类型。每个原始值在他属的枚举类型定义的时候都应该是不同的。如果原始值是整数类型，那么当其他枚举成员没有设置原始值的时候，他们的原始值是这个整型原始值自增长设置的。


enum Planet: Int {
    case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}
let earthsOrder = Planet.Mercury.rawValue
print("原始值： \(earthsOrder)")

let somePlanet = Planet.init(rawValue: 2)
print(somePlanet)



