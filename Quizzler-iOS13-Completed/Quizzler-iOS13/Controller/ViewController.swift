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
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var choice3Button: UIButton!
    @IBOutlet weak var choice4Button: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var wrongAnswerLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var opportunityLabel: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("questionLabel is \(String(describing: questionLabel))")
        print("questionLabel is \(String(describing: progressBar))")
        updateUI()
    }

    @IBAction func restartButtonPressed(_ sender: UIButton) {
        quizBrain.restart()
        
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        
        let userGotItRight = quizBrain.checkAnswer(userAnswer: userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
            quizBrain.nextQuestion()
        } else {
            sender.backgroundColor = UIColor.red
            if quizBrain.getOpportunity() == 0 {
                quizBrain.nextQuestion()
            }
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        let score = quizBrain.getScore()
        let chance = quizBrain.getOpportunity()
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(score)"
        totalLabel.text = "Archived \(score) / \(quizBrain.quiz.count)"
        wrongAnswerLabel.text = "Wrong answer(s): \(quizBrain.getWrongAnswer())"
        if chance > 0 {
            opportunityLabel.text = "You have \(quizBrain.getOpportunity()) chance"
        } else {
            opportunityLabel.text = "You have no chance for a wrong answer"
        }
        choice1Button.setTitle(quizBrain.getChoice(0), for: UIControl.State.normal)
        choice2Button.setTitle(quizBrain.getChoice(1), for: UIControl.State.normal)
        choice3Button.setTitle(quizBrain.getChoice(2), for: UIControl.State.normal)
        choice4Button.setTitle(quizBrain.getChoice(3), for: UIControl.State.normal)
        choice1Button.backgroundColor = UIColor.clear
        choice2Button.backgroundColor = UIColor.clear
        choice3Button.backgroundColor = UIColor.clear
        choice4Button.backgroundColor = UIColor.clear
    }

}


























