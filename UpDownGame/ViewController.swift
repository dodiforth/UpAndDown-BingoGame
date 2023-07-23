//
//  ViewController.swift
//  UpDownGame
//
//  Created by Dowon Kim on 13/07/2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    // System select a random number btw 1 to 10
    var cpuNumber = Int.random(in: 1...10)
    
    // to store my selected number on the screen (1...10) 🚧
//    var myNumber: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1) Put a title as "SELECT" on the mainLabel
        mainLabel.text = "SELECT"
        // 2) numberLabel needs to be a blamk("")
        numberLabel.text = ""
        
    }

    // Linked with the buttons from 1 to 10
    @IBAction func buttonTapped(_ sender: UIButton) {
        //1) Bring the value(or number) of the button which is tapped
        let numString = sender.currentTitle!
        
        //2) Change the numberLabel's title according to the button tapped
        numberLabel.text = numString
        
        //3) Store it in a variable (or not?) 🚧
//        guard let num = Int(numString) else { return }
//        myNumber = num
    }

    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        
        // 🚧 -> 🚦
        // Bring the string from the numberLabel and take off the optional
        guard let myNumString = numberLabel.text else {return}
        // Change the type
        guard let myNumber = Int(myNumString) else {return}
        
        
        //1) UP DOWN Or Bingo(mainLAbel)! Compare the numbers between my select number and system selected number
        if cpuNumber > myNumber {
            mainLabel.text = "Up!"
        } else if cpuNumber < myNumber {
            mainLabel.text = "Down!"
        } else {
            mainLabel.text = "Bingo😃"
        }
        
    }
    
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        //1) mainLaben -> "SELECT"
        mainLabel.text = "SELECT"
        //2) Let the system re-select its random number
        cpuNumber = Int.random(in: 1...10)
        //3) numberLabel -> ""(blank)
        numberLabel.text = ""
        
        //+++ the code below is unnecessary
        //myNumber = 1
    }
    
    
}

