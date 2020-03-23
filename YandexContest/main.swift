//
//  main.swift
//  YandexContest
//
//  Created by Роенко Денис on 23.03.2020.
//  Copyright © 2020 Denis Roenko. All rights reserved.
//

import Foundation

var inString = ""

do {
    inString = try String(contentsOfFile: "input.txt")
} catch {
    
    print("Failed reading from input.txt, Error: " + error.localizedDescription)
}

let input = inString.dropLast()

let nums = input.split(separator: " ")

var result = 0

nums.forEach {
    let num = Int($0)!
    result += num
}

let outString = String(result)

do {
    try outString.write(to: URL(fileURLWithPath: "output.txt"), atomically: true, encoding: .utf8)
} catch {
    
    print("Failed writing from output.txt, Error: " + error.localizedDescription)
}
