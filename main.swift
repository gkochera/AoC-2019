//
//  main.swift
//  learnswift
//
//  Created by George J Kochera III on 8/22/21.
//

import Foundation


// Create a file reader and read the data from the file into a usable format
var fr = FileReader()
var data = fr.readFileToFloatArray(fileName: "day1.txt", separator: "\n");


// Create the day object and solve the problem

var day = Day1(debug: false)
//var day = Day2(debug: true, instructions: )


day.solve(input: data)


