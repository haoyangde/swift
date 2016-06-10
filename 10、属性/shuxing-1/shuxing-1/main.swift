//
//  main.swift
//  shuxing-1
//
//  Created by 好样的 on 16/6/10.
//  Copyright © 2016年 好样的. All rights reserved.
//

import Foundation

/**
*  1、存储属性
*/
struct FixedLengthRange {
    var firstValue:Int
    var length: Int
}

var rangeofThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeofThreeItems.firstValue = 6

//如果创建了一个结构体的实例并赋值给一个常量，则无法修改实例的任何属性，即使定义了变量存储属性：

//let rangeOfFourItems = FixedLengthRange(firstValue: 10, length: 20)
//rangeOfFourItems.length = 100   不可修改



/**
*  2、延迟存储属性
延迟存储属性是指当第一次被调用的时候才会计算其初始值的属性。在属性声明前使用@lazy来标示一个延迟存储属性。

必须将延迟存储属性声明成变量（使用var关键字），因为属性的值在实例构造完成之前可能无法得到。而常量属性在构造过程完成之前必须要有初始值，因此无法声明成延迟属性。

*/

class DataImporter {
    var fileName = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()
manager.data =  ["some data"]
manager.data = manager.data + ["some more data"]
// DataImporter 实例的 importer 属性还没有被创建

//DataManager也可能不从文件中导入数据。所以当DataManager的实例被创建时，没必要创建一个DataImporter的实例，更明智的是当用到DataImporter的时候才去创建它。

print(manager.importer.fileName)//// DataImporter 实例的 importer 属性现在被创建了


/**
*  3、计算属性
    除存储属性外，类、结构体和枚举可以定义计算属性，计算属性不直接存储值，而是提供一个 getter 来获取值，一个可选的 setter 来间接设置其他属性或变量的值。


*/

struct Point {
    var x = 0.0, y = 0.0
}


struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width/2)
            let centerY = origin.y + (size.height/2)
            return Point(x: centerX, y: centerY)
        }
        
        set(newCenter) {
            origin.x = newCenter.x - size.width/2
            origin.y = newCenter.y - size.height/2
            
        }
    }
}

var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))

let initialSquareCenter = square.center
square.center = Point(x: 15.0, y: 15.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")

//如果计算属性的 setter 没有定义表示新值的参数名，则可以使用默认名称newValue

struct AlertnativeRect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width/2)
            let centerY = origin.y + (size.height/2)
            return Point(x: centerX, y: centerY)
        }
        
        set {
            origin.x = newValue.x - (size.width/2)
            origin.y = newValue.y - (size.height/2)
        }
    }
}

//只读计算属性    只有 getter 没有 setter 的计算属性就是只读计算属性。  只读计算属性总是返回一个值，可以通过点运算符访问，但不能设置新的值。
//只读计算属性的声明可以去掉get关键字和花括号：



struct Cuboid {
    var width = 0.0,height = 0.0,depth = 0.0
    var volume: Double {
        return width * height * depth
    }
}

let fourByFiveByTow = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
print(fourByFiveByTow.volume)

/**
*  4、属性监视器    属性监视器监控和响应属性值的变化，每次属性被设置值的时候都会调用属性监视器，甚至新的值和现在的值相同的时候也不例外。

可以为除了延迟存储属性之外的其他存储属性添加属性监视器，

可以为属性添加如下的一个或全部监视器：

willSet在设置新的值之前调用
didSet在新的值被设置之后立即调用

*/



class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        
        didSet {
            //didSet没有提供自定义名称，所以默认值oldValue表示旧值的参数名。  如果在didSet监视器里为属性赋值，这个值会替换监视器之前设置的值。
            if totalSteps > oldValue {
                print("Add \(totalSteps - oldValue) steps")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200



/**
*  5、类型属性
*/
//跟实例的存储属性不同，必须给存储型类型属性指定默认值，因为类型本身无法在初始化过程中使用构造器给类型属性赋值。

struct SomeStructure {
    static var storedTypePorperty = "Some Value."
    static var computedTypePorperty: Int {
        return 100
    }
}
print(SomeStructure.storedTypePorperty)


