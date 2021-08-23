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
    
    /// Solves the problem using the provided input.
    func solve() -> Int {
        // Set a variable for the index
        var index = 0
        
        // Loop through the array until we hit 99 which is the stop opcode
        while (self.input[index] != 99) {
            
            // Add if the opcode is 1
            if (self.input[index] == 1) {
                
                self.add(index: index)
            
            // Multiply if the opcode is 2
            } else if (self.input[index] == 2) {
                
                self.mult(index: index)
            
            // No other instructions available
            } else {
                
                // If we don't recongize the instruction, let the user know
                print("Unrecognized instruction at index \(index)")
                
            }
            
            index += 4
        }
        
        // Print the before and after if we are debugging
        if (self.debug) {
            print("\n--- DEBUG BEGIN ---")
            print(self.oldInput, "\nvvv\n", self.input)
            print("--- DEBUG END ---\n")
        }
        
        // Display the answer

        return self.input[0]
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
    
    func findNounAndVerb(target: Int) -> (Int, Int) {
        
        
        var noun = 0
        var verb = 0
        for noun in 0...100 {
            for verb in 0...100 {
                self.reset()
                self.input[1] = noun
                self.input[2] = verb
                if (target == self.solve()) {
                    noun = noun
                    break
                }
            }
            if (target == self.solve()) {
                break
            }
        }
        
        return (noun, verb)
    }
    
    func reset() -> Void {
        self.input = self.oldInput
    }
    
}
