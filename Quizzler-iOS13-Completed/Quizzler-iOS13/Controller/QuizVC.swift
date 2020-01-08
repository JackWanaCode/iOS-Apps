//
//  QuizVC.swift
//  Quizzler-iOS13
//
//  Created by Aries Lam on 1/5/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class QuizVC: UIViewController {

    @IBOutlet weak var rightAnswerLabel: UILabel!
    @IBOutlet weak var wrongAnswerLabel: UILabel!
    @IBOutlet weak var chanceLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var requestLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var choice3Button: UIButton!
    @IBOutlet weak var choice4Button: UIButton!
    
    var quizBrain = QuizBrain()
    var rightAnswer = 0
    var wrongAnswer = 0
    var shuffleQuestion = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        UpdateUI()
    }
    
    @IBAction func restartButtonPressed(_ sender: UIButton) {
        quizBrain.restart()
        UpdateUI()
    }
    

    @IBAction func homeButtonPressed(_ sender: UIButton) {
        let home = HomeVC()
        self.present(home, animated: true, completion: nil)
    }
    
    @IBAction func choiceButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle ?? "fake answer"
        
        let userGotItRight = quizBrain.checkAnswer(userAnswer: userAnswer)
        if userGotItRight {
            sender.backgroundColor = .systemGreen
        } else {
            sender.backgroundColor = .systemRed
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(UpdateUI), userInfo: nil, repeats: false)
    }
    
    @objc func UpdateUI() {
        rightAnswerLabel.text = "Right answer(s): \(quizBrain.getScore())"
        wrongAnswerLabel.text = "Wrong answer(s): \(quizBrain.getWrongAnswer())"
        chanceLabel.text = "No of chance: \(quizBrain.getOpportunity())"
        scoreLabel.text = "\(quizBrain.getScore()) / \(quizBrain.quiz.count)"
        requestLabel.text = quizBrain.getQuestionText()
        choice1Button.setTitle(quizBrain.getChoice(1), for: UIControl.State.normal)
        choice2Button.setTitle(quizBrain.getChoice(2), for: UIControl.State.normal)
        choice3Button.setTitle(quizBrain.getChoice(3), for: UIControl.State.normal)
        choice4Button.setTitle(quizBrain.getChoice(4), for: UIControl.State.normal)
        choice1Button.backgroundColor = UIColor.clear
        choice2Button.backgroundColor = UIColor.clear
        choice3Button.backgroundColor = UIColor.clear
        choice4Button.backgroundColor = UIColor.clear
    }
}
