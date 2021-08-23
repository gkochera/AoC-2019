//
//  Day2.swift
//  AoC-2019
//
//  Created by George J Kochera III on 8/22/21.
//

import Foundation

class Day2 {
    
    // Have an flag on construction for debugging statements
    let debug: Bool
    var input: [Int]
    var oldInput: [Int]
    
    init(debug: Bool, input: [Int]) {
        self.debug = debug
        self.input = input
        self.oldInput = input
        self.input[1] = 12
        self.input[2] = 2
    }
    
    func solve() -> Void {
        // Set a variable for the index
        var index = 0
        
        // Loop through the array until we hit 99 which is the stop opcode
        while (self.input[index] != 99) {
            
            if (self.input[index] == 1) {
                self.add(index: index)
            
            } else if (self.input[index] == 2) {
                
                self.mult(index: index)
            
            } else {
                
                // If we don't recongize the instruction, let the user know
                print("Unrecognized instruction at index \(index)")
                
            }
            
            index += 4
        }
        
        print("PART A ANSWER ---")
        print(self.oldInput, "\nvvv\n", self.input)
    }
    
    func add(index: Int) {
        let idFirst = self.input[index + 1]
        let idSecond = self.input[index + 2]
        let idThird = self.input[index + 3]
        self.input[idThird] = self.input[idFirst] + self.input[idSecond]
    }
    
    func mult(index: Int) {
        let idFirst = self.input[index + 1]
        let idSecond = self.input[index + 2]
        let idThird = self.input[index + 3]
        self.input[idThird] = self.input[idFirst] * self.input[idSecond]
     }
    
}
