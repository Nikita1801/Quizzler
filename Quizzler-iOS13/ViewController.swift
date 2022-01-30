//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLable: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet weak var bubblesIV: UIImageView!
    
    let quiz = [
        ["Four + Two equal to Six", "True"],
        ["Nine / Three equal Two", "False"],
        ["Five + Three equal Eight", "True"]
    ]
    
    var questionNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bubblesIV.transform = CGAffineTransform(scaleX: 1, y: -1)
        progressBar.layer.cornerRadius = 4
        progressBar.clipsToBounds = true
        progressBar.layer.sublayers![1].cornerRadius = 2
        progressBar.subviews[1].clipsToBounds = true
        
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("Right")
        }
        else {
            print("Wrong")
        }
        
        if questionNumber < quiz.count-1 {
            questionNumber+=1
            
        }
        else {
            questionNumber = 0
        }
        updateUI()
    }
    
    func updateUI() {
        questionLable.text = quiz[questionNumber][0]
    }
    
}

