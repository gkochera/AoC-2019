//
//  File.swift
//  learnswift
//
//  Created by George J Kochera III on 8/22/21.
//

import Foundation

// Read the file for processing

class FileReader {
    
    static func readFileToFloatArray(fileName: String, separator: String.Element) -> [Float] {
        
    }
    
    static func readFileToIntArray(fileName: String, separator: String.Element) -> [Int] {
        
    }
    
    private func _readFileToArray<T>(type: T.Type, fileName: String, separator: String.Element) {
        // Open the file, split at every newline and put each element in an array
        let contents = try! String(contentsOfFile: fileName)
        let lines = contents.split(separator: separator)

        
        // Setup the array we're going to return
        if type is Float {
            var data = [Float]()
            
            // Construct the array
            for line in lines {
                if let temp = Float(line) {
                    data.append(temp)
                } else {
                    print("Invalid data")
                }
            }
            
        } else if type is Int {
            var data = [Int]()
            
            // Construct the array
            for line in lines {
                if let temp = Int(line) {
                    data.append(temp)
                } else {
                    print("Invalid data")
                }
            }
        }
        

        
        // Return the array
        return data
    }

}


