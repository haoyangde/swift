//
//  main.swift
//  控制流-1
//
//  Created by chensongqi on 16/6/3.
//  Copyright © 2016年 chensongqi. All rights reserved.
//

import Foundation

/**
 *  1、For循环
 */

for someIndex in 1...5 {
    print("\(someIndex) times 5 is \(someIndex * 5)")
}

/**
 *  2、While循环
 */

var awhile = 0
while awhile < 5 {
    print("while \(awhile)")
    awhile += 1;
}

/**
 *  3、repeat-While
 */

var dowhile = 0;
repeat  {
    print("repeat \(dowhile)");
    dowhile += 1;
} while dowhile < 5

/**
 *  4、条件语句   if 判断的条件必须是BOOL值
 */

var someBool = true
if someBool {
    print("条件为真")
}

/**
 *  3、switch
 */

let someCharacter: Character = "e"
switch someCharacter {
    case "a", "e","i","o","u":
        print("\(someCharacter) is a vowel")
    case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
        print("\(someCharacter) is a consonant")
    default:
        print("\(someCharacter) is not a vowel or a consonant")
}

//没有隐性掉入  
//相比C和objective-c中的switch语句，Swift中（如果忘了写break）的switch不会默认的掉落到每个case的下面进入另一个case。

//范围匹配

let count = 3_000
switch count {
case 0:
    print("xxxx")
case 1...100:
    print("wwwww")
case 101...30000:
    print("uuuuuu")
default:
    print("没有找到")
}

//元组
let somePoint = (1,1)
switch somePoint {
case (0,0):
    print("(0,0) is at the origin")
case (_,0):
    print("(\(somePoint.0), 0) is on the x-axis")
case (-2...2, -2...2):
    print("(\(somePoint.0), \(somePoint.1)) is inside the box")
default:
    print("(\(somePoint.0), \(somePoint.1)) is outside of the box")
}


//Value Bindings 值绑定
let anotherPoint = (2,0)
switch anotherPoint {
case (let x,0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with an y value of \(y)")
case  let (x,y):
    print("somewhere else at (\(x),\(y))")
}

//where
let yetAnotherPoint = (1,-1)
switch yetAnotherPoint {
case let (x,y) where x == y:
    print("\(x),\(y) is on the line x==y")
case let (x,y) where x == -y:
    print("\(x),\(y) is on the line x==-y")
case let (x,y):
    print("\(x),\(y) is on the line x== -y")
}

//控制转移  continue  break  fallthrough  return
let integerToDescribe = 5
var description = "The number \(integerToDescribe)"
switch integerToDescribe {
case 2,3,5,7,13,17,19:
    description += " a prime number and also"
    fallthrough
default:
    description += " an integer ."
}

print(description)


//标签语句
/**
 <label name>: while <condition> {
 <statements>
 }
 */








