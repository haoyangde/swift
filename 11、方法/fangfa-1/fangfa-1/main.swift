//
//  main.swift
//  fangfa-1
//
//  Created by 好样的 on 16/6/10.
//  Copyright © 2016年 好样的. All rights reserved.
//

import Foundation


//方法是由特定类型关联起来的函数。

/**
*  1、实例方法
*/

class Counter {
    var count = 0
    func increment() {
        count = count + 1
    }
}

let counter = Counter()
counter.increment()
print(counter.count)



class Counter2 {
    var count: Int = 0
    func incrementBy(amount: Int,numberofTime: Int) {
        count = count + amount * numberofTime
    }
}

var counter2 = Counter2()
counter2.incrementBy(10, numberofTime: 3)
print(counter2.count)




//结构体和枚举都是值类型。默认情况下，值类型的属性不能从它的内部实例方法修改。

struct Point {
    var x = 0.0, y = 0.0
    mutating func moveByX(deltax: Double, deltaY: Double) {
        x = x + deltax
        y = y + deltaY
    }
}
var point1 = Point()
point1.moveByX(10.0, deltaY: 20.0)

print(point1.x,point1.y)


/**
*  2、类型方法
*/
class SomeClass {
    class func someTypeMethod() {
        print("some Type Metnod")
    }
}

SomeClass.someTypeMethod()








