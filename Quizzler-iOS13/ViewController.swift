//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var questionNumber = 0;
    
    let quiz = [
        Question(text: "Do giraffes sweat?", answer: "True"),
        Question(text: "Is there a place called Hakuna Matata in Kenia", answer: "False"),
        Question(text: "Sharks kill more people than Vending Machines every year", answer: "False")
    ];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI();
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle;
        let actualAnswer = quiz[questionNumber].answer;
        
        if (userAnswer == actualAnswer) {
            print("Correrct");
        } else {
            print("Incorrect");
        }
        
        print(questionNumber, quiz.capacity);
        
        if (questionNumber < quiz.count - 1) {
            questionNumber += 1;
        } else {
            questionNumber = 0;
        }
        
        updateUI();
        
    }
    
    func updateUI() {
        
        questionLabel.text = quiz[questionNumber].text;
       
    }
    
}

