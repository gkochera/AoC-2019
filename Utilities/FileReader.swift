//
//  File.swift
//  learnswift
//
//  Created by George J Kochera III on 8/22/21.
//

import Foundation

// Read the file for processing

class FileReader {
    
    func readFile(fileName: String) -> [Float] {
        
        // Open the file, split at every newline and put each element in an array
        let contents = try! String(contentsOfFile: fileName)
        let lines = contents.split(separator: "\n")

        
        // Convert the lines to Ints
        var data = [Float]()
        for line in lines {
            if let temp = Float(line) {
                data.append(temp)
            } else {
                print("Invalid data")
            }
        }
        
        // Return the array
        return data
    }

}


