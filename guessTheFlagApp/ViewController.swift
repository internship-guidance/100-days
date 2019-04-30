//
//  ViewController.swift
//  guessTheFlagApp
//
//  Created by egmars.janis.timma on 18/04/2019.
//  Copyright © 2019 egmars.janis.timma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    var contries = [String]()
    var score = 0
    var correctAnswer = 0
    var currentQuestion = 0
    
    var options = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        contries.append("estonia")
//        contries.append("france")
//        contries.append("germany")
//        contries.append("ireland")
//        contries.append("italy")
//        contries.append("monaco")
        contries += ["estonia", "france", "germany", "ireland", "italy", "monaco"]
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        askQuestion()
    }

    func askQuestion(action: UIAlertAction! = nil) {
        contries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        options = [contries[0], contries[1], contries[2]]
        button1.setImage(UIImage (named: contries[0]), for: .normal)
        button2.setImage(UIImage (named: contries[1]), for: .normal)
        button3.setImage(UIImage (named: contries[2]), for: .normal)
        
//        button1.setTitle(contries[0], for: .normal)
//        button2.setTitle(contries[1], for: .normal)
//        button3.setTitle(contries[2], for: .normal)

        
        title = "\(currentQuestion + 1). question: \(contries[correctAnswer].uppercased()), score: \(score)"
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        var title: String
        
        
        let option = options[sender.tag]
        
        if sender.tag == correctAnswer {
            title = "correct! \(option)"
            score += 1
        } else {
            title = "wrong! \(option)"
            score -= 1
        }
        currentQuestion += 1
        
        let ac = UIAlertController(title: title, message: "Your score is \(score)", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))

//        if currentQuestion == 10 {
            present(ac, animated: true)
//        }
    }
    
}
