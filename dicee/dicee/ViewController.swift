//
//  ViewController.swift
//  dicee
//
//  Created by Pham Anh Tuan on 21/02/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    var leftDiceNumber = 0
    var rightDiceNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImageView1.image = UIImage(imageLiteralResourceName: "DiceThree")
        diceImageView2.image = UIImage(imageLiteralResourceName: "DiceTwo")
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let diceArray = [UIImage(imageLiteralResourceName: "DiceOne"),UIImage(imageLiteralResourceName: "DiceTwo"), UIImage(imageLiteralResourceName: "DiceThree"), UIImage(imageLiteralResourceName: "DiceFour"), UIImage(imageLiteralResourceName: "DiceFive"), UIImage(imageLiteralResourceName: "DiceSix")]
        
        leftDiceNumber = Int.random(in: 0...5)
        rightDiceNumber = Int.random(in: 0...5)
        
        diceImageView1.image = diceArray[leftDiceNumber]
        diceImageView2.image = diceArray[rightDiceNumber]
        
    }
}

