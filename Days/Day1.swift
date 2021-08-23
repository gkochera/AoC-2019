//
//  Day1.swift
//  AoC-2019
//
//  Created by George J Kochera III on 8/22/21.
//

import Foundation

class Day1 {
    
    // Have an flag on construction for debugging statements
    let debug: Bool
    var input: [Float]
    init(debug: Bool, input: [Float]) {
        self.debug = debug
        self.input = input
    }
    
    func solve() -> Void {

        // Perform the calcualtion for fuel
        for i in self.input.indices {
            self.input[i] = calculateFuel(mass: self.input[i])
        }

        // Sum everything up to an integer
        var sum: Int = 0

        for final in self.input {
            sum += Int(final)
        }
        
        // Display the results and return
        print("PART A ANSWER ---")
        print("The sum is \(sum)")
        
        // Display the array if debugging
        if (self.debug) {
            print(self.input)
        }
    
        // Perform the calcuation for extra fuel
        for i in self.input.indices {
            self.input[i] = calculateExtraFuel(mass: self.input[i])
        }
        
        // Sum everything up to an integer
        sum = 0
        for final in self.input {
            sum += Int(final)
        }
        
        // Display the results and return
        print("PART B ANSWER ---")
        print("The sum is \(sum)")
        
        // Display the array if debugging
        if (self.debug) {
            print(self.input)
        }
        
        return
    }
    
    // Calculates one round of fueld based on a given mass
    func calculateFuel(mass: Float) -> Float {
        var input = mass
        input = input / 3
        input = input.rounded(FloatingPointRoundingRule.down)
        input = input - 2
        return input
    }
    
    // Iteratively calculates additional fuel based on provided mass until no more fuel is required
    func calculateExtraFuel(mass: Float) -> Float {
        var final = mass
        var temp = mass
        while (temp > 0.0) {
            temp = calculateFuel(mass: temp)
            if (temp > 0.0) {
                final += temp
            } else {
                temp = 0.0;
            }
            if (self.debug) { print("Mass: \(mass) Final: \(final) Temp: \(temp)")}
        }
        return final
    }
}
