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
    
    var upDownManager = UpDownManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reset()
    }
    
    func reset() {
        mainLabel.text = "SELECT"
        numberLabel.text = ""
        upDownManager.resetNum()
    }

    // Linked with the buttons from 1 to 10
    @IBAction func buttonTapped(_ sender: UIButton) {

        guard let numString = sender.currentTitle else { return }
        numberLabel.text = numString
        
        guard let num = Int(numString) else { return }
        upDownManager.setUsersNum(num: num)
        
    }

    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
                
        guard let myNumString = numberLabel.text,
              let myNumber = Int(myNumString) else { return }
            
        upDownManager.setUsersNum(num: myNumber)
        mainLabel.text = upDownManager.getUpDownResult()

    }
    
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        reset()
    }
    
    
}

