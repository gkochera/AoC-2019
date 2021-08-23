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
    var instructions: [Int]
    
    init(debug: Bool, instructions: [Int]) {
        self.debug = debug
        self.instructions = instructions
    }
    
    func solve() -> Void {
        
        // Set a variable for the index
        var index = 0
        
        // Loop through the array until we hit 99 which is the stop opcode
        while (self.instructions[index] != 99) {
            
            if (self.instructions[index] == 1) {
                
                self.add(idFirst: index + 1, idSecond: index + 2, idThird: index + 3)
            
            } else if (self.instructions[index] == 2) {
                
                self.mult(idFirst: index + 1, idSecond: index + 2, idThird: index + 3)
            
            } else {
                
                // If we don't recongize the instruction, let the user know
                print("Unrecognized instruction at index \(index)")
                
            }
            
            index += 4
        }
    }
    
    func add(idFirst: Int, idSecond: Int, idThird: Int) {
        self.instructions[idThird] = self.instructions[idFirst] + self.instructions[idSecond]
    }
    
    func mult(idFirst: Int, idSecond: Int, idThird: Int) {
        self.instructions[idThird] = self.instructions[idFirst] * self.instructions[idSecond]
     }
    
}
