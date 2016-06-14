//
//  main.swift
//  jicheng-1
//
//  Created by chensongqi on 16/6/14.
//  Copyright © 2016年 chensongqi. All rights reserved.
//

import Foundation

/**
 1、定义一个基类（Base class）
 */

class Vehicle {
    var numberOfWheels: Int
    var maxPassengers: Int
    func description() -> String {
        return "\(numberOfWheels) wheels"
    }
    init() {
        numberOfWheels = 0
        maxPassengers = 1
    }
}

var someVehicle = Vehicle()


/**
 2、子类生成（Subclassing）
 */

class Bicycle: Vehicle {
    override init() {
        super.init()
        numberOfWheels = 2
    }
}

/**
 3、重写（Overriding）
 */
class Car: Vehicle {
    var speed: Double = 0.0
    override init() {
        super.init()
        maxPassengers = 5
        numberOfWheels = 4
    }
    override func description() -> String {
        return super.description() + ";" + "traveling at \(speed) mph"
    }
}

/**
 4、重写属性
 */

class SpeedLimitedCar: Car {
    override var speed: Double {
        get {
            return super.speed
        }
        set {
            super.speed = min(newValue, 40.0)
        }
    }
}



/**
 5、防止重写
 */

class SomeClass {
    final var someValue = 100
}

