//
//  File.swift
//  learnswift
//
//  Created by George J Kochera III on 8/22/21.
//

import Foundation

// Read the file for processing

class FileReader {
    
    func readFileToFloatArray(fileName: String, separator: String.Element) -> [Float] {
        let subSequence = _readFileToArray(fileName: fileName, separator: separator)
        var data: [Float] = [Float]()
        // Construct the array
        for line in subSequence {
            if let temp = Float(line) {
                data.append(temp)
            } else {
                print("Invalid data")
            }
        }
        return data
    }
    
    func readFileToIntArray(fileName: String, separator: String.Element) -> [Int] {
        let subSequence = _readFileToArray(fileName: fileName, separator: separator)
        var data: [Int] = [Int]()
        // Construct the array
        for line in subSequence {
            if let temp = Int(line) {
                data.append(temp)
            } else {
                print("Invalid data")
            }
        }
        return data
    }
    
    private func _readFileToArray(fileName: String, separator: String.Element) -> [String.SubSequence] {
        // Open the file, split at every newline and put each element in an array
        let contents = try! String(contentsOfFile: fileName)
        let lines = contents.split(separator: separator)
        return lines
        
    }

}


