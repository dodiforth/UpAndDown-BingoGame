//
//  UpDownManager.swift
//  UpDownGame
//
//  Created by Dowon Kim on 23/07/2023.
//

import UIKit

struct UpDownManager {
    
    // let the System(computer) choose a random number
    private var cpuNumber = Int.random(in: 1...10)
    
    // user's number
    private var myNumber: Int = 1
    
    mutating func resetNum() {
        cpuNumber = Int.random(in: 1...10)
        myNumber = 1
    }
    
    mutating func setUsersNum(num: Int) {
        myNumber = num
    }
    
    func getUpDownResult() -> String {
        // compare the user's number and System's number choice
        if cpuNumber > myNumber {
            return "Up"
        } else if cpuNumber < myNumber {
            return "Down"
        } else {
            return "Bingo😎"
        }
    }
}
