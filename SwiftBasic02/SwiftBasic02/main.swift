//
//  main.swift
//  SwiftBasic02
//
//  Created by Student on 2022. 03. 01..
//  Copyright © 2022. vemwaat. All rights reserved.
//

import Foundation

let shoppingList: [String] = ["kenyer", "tej", "szalami", "sajt"]

print(shoppingList.first!)
print(shoppingList.last!)
print(shoppingList.count)

let shoppingSet: Set<String> = ["kenyer", "tej", "szalami", "sajt"]

print(shoppingSet)

let priceList: Dictionary<String, Int> = ["kenyer":450, "tej":300, "szalami":780, "sajt": 400]

print(priceList)

func greeting(message: String) -> String {
    return message
}

print(greeting(message: "Asd"))

func powering(_ base: Double, power: Double) -> (b: Double, p: Double, r: Double){
    let result = pow(base, power)
    return (base, power, result)
}

print(powering(10.0, power: 2.0).b)

let myPowering = powering(10.0, power: 2.0)
print("\(myPowering.b)^\(myPowering.p)=\(myPowering.r)")


var myArray = [1,2,3,4,5,6]
myArray.append(7)

func defaultParamFunc(param: Int = 100){
    print(param)
    
}

func defParamsFunc(params: Int...){
    print(params)
}

defaultParamFunc(param: 200)
defaultParamFunc()
defParamsFunc(params: 1,2,3,4,5,6)

func nestedFunc(input: String) -> (Int,Int) -> Int {
    func increase(number: Int, by: Int) -> Int{
        return number + by
    }
    func decrease(number: Int, by: Int) -> Int{
        return number - by
    }
    
    if(input == "I"){
        return increase
    }else {
        return decrease
    }
}

let str = "I"
let increaser = nestedFunc(input: str)
print(increaser(100,10))




var userList = ["user10", "user1", "user200", "user5678", "userX"]


func backwards(str1: String, str2: String) -> Bool {
    return str1 > str2
}


//userList = userList.sorted(by: backwards)

userList = userList.sorted(by: {(str1: String, str2: String) -> Bool in return str1 > str2})


print(userList)













