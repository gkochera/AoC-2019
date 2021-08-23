//
//  main.swift
//  learnswift
//
//  Created by George J Kochera III on 8/22/21.
//

import Foundation


// Create a file reader object and a day object (can be changed to different classes.
var fr = FileReader()
var day = Day1(debug: true)

var data = fr.readFile(fileName: "data.txt");
day.solve(input: data)


