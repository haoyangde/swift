//
//  main.swift
//  gouzaoguocheng-1
//
//  Created by chensongqi on 16/6/17.
//  Copyright © 2016年 chensongqi. All rights reserved.
//

import Foundation

//构造过程是通过定义构造器（Initializers）来实现的，这些构造器可以看做是用来创建特定类型实例的特殊方法。与 Objective-C 中的构造器不同，Swift 的构造器无需返回值，它们的主要任务是保证新实例在第一次使用前完成正确的初始化。

/**
 *  1、存储型属性的初始赋值
 类和结构体在实例创建时，必须为所有存储型属性设置合适的初始值。存储型属性的值不能处于一个未知的状态。
 
 当你为存储型属性设置默认值或者在构造器中为其赋值时，它们的值是被直接设置的，不会触发任何属性观测器
 */


struct Fahrenheit {
    var temperature: Double
    init() {
        temperature = 32.0
    }
}

var f = Fahrenheit.init()

/**
 *  2、定制化构造过程
 */

struct Celsius {
    var temperatureInCelsius:Double = 0.0
    init(fromFathrenhiit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0)/1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 237.15
    }
}

let boilingPointOfWater = Celsius.init(fromKelvin: 212.0)

let freezingPointOfWater = Celsius.init(fromFathrenhiit: 273.15)




/**
 *  3、内部和外部参数名   Swift 会为每个构造器的参数自动生成一个跟内部名字相同的外部名
 */

struct Color {
    var red = 0.0, green = 0.0, blue = 0.0
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
}


/**
 *  4、 默认构造器
 Swift 将为所有属性已提供默认值的且自身没有定义任何构造器的结构体或基类，提供一个默认的构造器。这个默认构造器将简单的创建一个所有属性值都设置为默认值的实例。
 */


class ShoppingListItem {
    var name: String?
    var quantity = 1
    var purchased = false
}

var item = ShoppingListItem()


/**
 *  5、结构体的逐一成员构造器  如果结构体对所有存储型属性提供了默认值且自身没有提供定制的构造器，它们能自动获得一个逐一成员构造器。
 */

struct Size {
    var width = 0.0
    var height = 0.0
}
let twoByTwo = Size(width: 1.2, height: 1.3)

/**
 *  6、值类型的构造器代理
 构造器可以通过调用其它构造器来完成实例的部分构造过程。这一过程称为构造器代理，它能减少多个构造器间的代码重复。
 
 */

struct Point {
    var x = 1.0
    var y = 2.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    init(){}
    init (origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    init(center: Point, size: Size) {
        let originX = center.x - (size.width)/2
        let originY = center.y - (size.height)/2
        self.init(origin:Point(x:originX,y:originY),size:size)
    }
}

/**
 *  7、类的继承和构造过程
 类里面的所有存储型属性--包括所有继承自父类的属性--都必须在构造过程中设置初始值。
 Swift 提供了两种类型的类构造器来确保所有类实例中存储型属性都能获得初始值，它们分别是指定构造器和便利构造器。
 指定构造器是类中最主要的构造器。一个指定构造器将初始化类中提供的所有属性，并根据父类链往上调用父类的构造器来实现父类的初始化。
 */



class Food {
    var name: String
    init(name: String) {
        self.name = name;
    }
    convenience init() {
        self.init(name: "someFood")
    }
}
var someFood = Food.init()
print(someFood.name)

//通过闭包和函数来设置属性的默认值

class SomeClass {
    var someProperty: String {
       return "someString"
    }
}

var sclass = SomeClass()
print(sclass.someProperty)

















