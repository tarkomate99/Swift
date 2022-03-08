//
//  main.swift
//  SwiftBasics03
//
//  Created by Student on 2022. 03. 08..
//  Copyright © 2022. vemwaat. All rights reserved.
//

import Foundation

func swapping<T>(a: inout T, b: inout T){
    
    let temp = a
    a = b
    b = temp
    
}

var anum = 10
var bnum = 20
swapping(a: &anum, b: &bnum )


enum OwnError: Error {
    case empty
    case numberFormat
    case long
    
}

func dangerousConversion(param: String?) throws -> Double {
    
    guard !((param?.isEmpty)!) else {
        throw OwnError.empty
    }
    
    guard let distance = Double(param!) else {
        throw OwnError.numberFormat
    }
    
    guard (param?.count)! < 7 else {
        throw OwnError.long
    }
    
    //throw
    return distance
}


print("How far do you live from Szeged? (in km(s))")

var input: String?

do {
    input = readLine()
    let dist = try dangerousConversion(param: input)
    print("You live \(dist) kms far from Szeged.")
} catch OwnError.empty {
    
    print("The input is empty.")
    
} catch OwnError.numberFormat {
    
    print("The input is not a number")
} catch OwnError.long {
    
    print("You may have left the Earth..")
    
}
    
protocol Animal {
    var lives: Int { get set }
    var type: String { get }
    
    func makeNoise() -> String
    func hunt()
    func goHome()
    
}

protocol AnimalDelegate {
    
    func animalStartedHunting()
    func animalFinishedHunting()
    
}

class CatDelegate: AnimalDelegate {
    func animalStartedHunting() {
        print("Animal started hunting.")
    }
    
    func animalFinishedHunting() {
        print("Animal finished hunting.")
    }
}

class Cat: Animal {
    var lives: Int = 9
    var type: String = "Cat"
    
    var delegate: AnimalDelegate?
    
    func makeNoise() -> String {
        return "meow"
    }
    
    func hunt() {
        self.delegate?.animalStartedHunting()
        self.lives -= 1
    }
    
    func goHome() {
        print(self.makeNoise())
        self.delegate?.animalFinishedHunting()
    }
    
    
    
    
}

//let cat = Cat()
//cat.delegate = CatDelegate()
//cat.hunt()
//cat.goHome()
//print(cat.lives)

