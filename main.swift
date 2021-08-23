//
//  main.swift
//  learnswift
//
//  Created by George J Kochera III on 8/22/21.
//

import Foundation


// Create a file reader and read the data from the file into a usable format
var fr = FileReader()

// Day 1
//var data1 = fr.readFileToFloatArray(fileName: "day1.txt", separator: "\n");
//var day1 = Day1(debug: false, input: data1 )
//day1.solve()

// Day 2
var data2 = fr.readFileToIntArray(fileName: "day2.txt", separator: ",")
var day2 = Day2(debug: true, input: data2 )
day2.solve()


