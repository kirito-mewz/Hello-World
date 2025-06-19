//
//  Basic.swift
//  Hello World
//
//  Created by PaingHtet on 19/06/2025.
//

import Foundation

var colorList: [String] = ["red", "blue", "green"]
var regionList: [String] = ["Yangon", "Mandalay", "Shan"]
var townshipList: [String: [String]] = [
    "Yangon": ["Tamwe", "Pazundaung", "Hledan"],
    "Mandalay": [],
    "Shan": []
]

var isEven: (Int) -> Bool = { $0 % 2 == 0 }

func main() {
    
    var color = "olive"
    color = "lemon"
    
    [color, "violet", "brown", "teal"].forEach{ colorList.append($0) }
    
    guard let townshipOfYangon = townshipList["Yangon"] else { return }
    debugPrint(townshipOfYangon)
    
    // for loop
    for color in colorList {
        debugPrint(color)
    }
    
    // while loop
    var indexForWhile = 0
    while indexForWhile < 3 {
        debugPrint(colorList[indexForWhile])
        indexForWhile += 1
    }
    
    // repeat loop
    var indexForRepeatWhile = 0
    repeat {
        debugPrint(indexForRepeatWhile)
        indexForRepeatWhile += 1
    } while indexForRepeatWhile < 3
                
    debugPrint(isEven(13))
    
    let multiplyNineBy = multiply(9)
    debugPrint(multiplyNineBy(2))
                
    fetchData("https://api.example.com/products") { products in
        debugPrint(products)
    }
    
}

func multiply(_ number: Int) -> (Int) -> Int {
    return { number * $0 }
}

func fetchData(_ withUrl: String, onComplete: @escaping ([Any]) -> Void) {
    let dummyData = ["Macbook Air", "Macbook Pro", "iMac"]
    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
        onComplete(dummyData)
    }
}
