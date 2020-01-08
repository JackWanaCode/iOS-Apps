//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    var wrongAnswer = 0
    var opportunity = 4
    
    let quiz = [
        Question(q: "2 x 2 =", a: ["4", "5", "3", "2"], correctAnswer: "4"),
        Question(q: "2 x 3 =", a: ["5", "6", "4", "7"], correctAnswer: "6"),
        Question(q: "2 x 4 =", a: ["6", "8", "9", "7"], correctAnswer: "8"),
        Question(q: "2 x 5 =", a: ["9", "10", "8", "11"], correctAnswer: "10"),
        Question(q: "2 x 6 =", a: ["10", "13", "11", "12"], correctAnswer: "12"),
        Question(q: "2 x 7 =", a: ["12", "15", "13", "14"], correctAnswer: "14"),
        Question(q: "2 x 8 =", a: ["17", "15", "14", "16"], correctAnswer: "16"),
        Question(q: "2 x 9 =", a: ["16", "18", "17", "19"], correctAnswer: "18"),
        Question(q: "3 x 2 =", a: ["6", "5", "4", "7"], correctAnswer: "6"),
        Question(q: "3 x 3 =", a: ["8", "10", "7", "9"], correctAnswer: "9"),
        Question(q: "3 x 4 =", a: ["13", "11", "12", "10"], correctAnswer: "12"),
        Question(q: "3 x 5 =", a: ["13", "14", "15", "16"], correctAnswer: "15"),
        Question(q: "3 x 6 =", a: ["16", "17", "19", "18"], correctAnswer: "18"),
        Question(q: "3 x 7 =", a: ["20", "21", "19", "22"], correctAnswer: "21"),
        Question(q: "3 x 8 =", a: ["23", "24", "25", "22"], correctAnswer: "24"),
        Question(q: "3 x 9 =", a: ["26", "28", "25", "27"], correctAnswer: "27"),
        Question(q: "4 x 2 =", a: ["8", "9", "6", "7"], correctAnswer: "8"),
        Question(q: "4 x 3 =", a: ["11", "12", "10", "13"], correctAnswer: "12"),
        Question(q: "4 x 4 =", a: ["15", "16", "14", "17"], correctAnswer: "16"),
        Question(q: "4 x 5 =", a: ["18", "19", "20", "21"], correctAnswer: "20"),
        Question(q: "4 x 6 =", a: ["24", "22", "25", "23"], correctAnswer: "24"),
        Question(q: "4 x 7 =", a: ["26", "27", "28", "29"], correctAnswer: "28"),
        Question(q: "4 x 8 =", a: ["32", "30", "33", "31"], correctAnswer: "32"),
        Question(q: "4 x 9 =", a: ["35", "37", "34", "36"], correctAnswer: "36"),
        Question(q: "5 x 2 =", a: ["10", "8", "9", "11"], correctAnswer: "10"),
        Question(q: "5 x 3 =", a: ["15", "14", "13", "16"], correctAnswer: "15"),
        Question(q: "5 x 4 =", a: ["20", "21", "18", "19"], correctAnswer: "20"),
        Question(q: "5 x 5 =", a: ["26", "24", "23", "25"], correctAnswer: "25"),
        Question(q: "5 x 6 =", a: ["29", "28", "31", "30"], correctAnswer: "30"),
        Question(q: "5 x 7 =", a: ["33", "34", "35", "36"], correctAnswer: "35"),
        Question(q: "5 x 8 =", a: ["40", "39", "38", "41"], correctAnswer: "40"),
        Question(q: "5 x 9 =", a: ["43", "44", "46", "45"], correctAnswer: "45"),
        Question(q: "6 x 2 =", a: ["13", "10", "12", "11"], correctAnswer: "12"),
        Question(q: "6 x 3 =", a: ["16", "19", "17", "18"], correctAnswer: "18"),
        Question(q: "6 x 4 =", a: ["24", "22", "23", "25"], correctAnswer: "24"),
        Question(q: "6 x 5 =", a: ["30", "31", "28", "29"], correctAnswer: "30"),
        Question(q: "6 x 6 =", a: ["34", "36", "35", "37"], correctAnswer: "36"),
        Question(q: "6 x 7 =", a: ["42", "41", "40", "43"], correctAnswer: "42"),
        Question(q: "6 x 8 =", a: ["49", "48", "46", "47"], correctAnswer: "48"),
        Question(q: "6 x 9 =", a: ["52", "54", "53", "55"], correctAnswer: "54"),
        Question(q: "7 x 2 =", a: ["15", "12", "14", "13"], correctAnswer: "14"),
        Question(q: "7 x 3 =", a: ["21", "19", "22", "20"], correctAnswer: "21"),
        Question(q: "7 x 4 =", a: ["29", "28", "27", "26"], correctAnswer: "28"),
        Question(q: "7 x 5 =", a: ["33", "36", "35", "34"], correctAnswer: "35"),
        Question(q: "7 x 6 =", a: ["40", "43", "41", "42"], correctAnswer: "42"),
        Question(q: "7 x 7 =", a: ["49", "48", "47", "50"], correctAnswer: "49"),
        Question(q: "7 x 8 =", a: ["55", "57", "54", "56"], correctAnswer: "56"),
        Question(q: "7 x 9 =", a: ["63", "62", "61", "64"], correctAnswer: "63"),
        Question(q: "8 x 2 =", a: ["15", "16", "14", "17"], correctAnswer: "16"),
        Question(q: "8 x 3 =", a: ["25", "23", "24", "22"], correctAnswer: "24"),
        Question(q: "8 x 4 =", a: ["33", "32", "31", "30"], correctAnswer: "32"),
        Question(q: "8 x 5 =", a: ["38", "40", "41", "39"], correctAnswer: "40"),
        Question(q: "8 x 6 =", a: ["47", "46", "48", "49"], correctAnswer: "48"),
        Question(q: "8 x 7 =", a: ["57", "54", "55", "56"], correctAnswer: "56"),
        Question(q: "8 x 8 =", a: ["65", "63", "62", "64"], correctAnswer: "64"),
        Question(q: "8 x 9 =", a: ["73", "71", "70", "72"], correctAnswer: "72"),
        Question(q: "9 x 2 =", a: ["18", "17", "19", "16"], correctAnswer: "18"),
        Question(q: "9 x 3 =", a: ["27", "28", "26", "25"], correctAnswer: "27"),
        Question(q: "9 x 4 =", a: ["37", "36", "35", "34"], correctAnswer: "36"),
        Question(q: "9 x 5 =", a: ["44", "43", "45", "46"], correctAnswer: "45"),
        Question(q: "9 x 6 =", a: ["55", "53", "54", "52"], correctAnswer: "54"),
        Question(q: "9 x 7 =", a: ["63", "62", "61", "64"], correctAnswer: "63"),
        Question(q: "9 x 8 =", a: ["71", "73", "70", "72"], correctAnswer: "72"),
        Question(q: "9 x 9 =", a: ["81", "82", "79", "80"], correctAnswer: "81")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
    mutating func nextQuestion(shuffle: Bool) {
        
        if !shuffle {
            if questionNumber + 1 < quiz.count {
                questionNumber += 1
            } else {
                questionNumber = 0
                score = 0
                wrongAnswer = 0
            }
        } else {
            
        }
        
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].correct {
            score += 1
            nextQuestion()
            return true
        } else {
            if opportunity > 0 {
                opportunity -= 1
            } else {
                nextQuestion()
                wrongAnswer += 1
            }
            return false
        }
    }
    
    func getChoice(_ choice: Int) -> String {
        if choice > 0 && choice <= quiz[questionNumber].answer.count {
            return quiz[questionNumber].answer[choice - 1]
        } else {
        return "Please don't chose this."
        }
    }
    
    func getWrongAnswer() -> Int {
        return wrongAnswer
    }
    
    mutating func restart() {
        questionNumber = 0
        score = 0
        wrongAnswer = 0
        opportunity = 4
    }
    
    func getOpportunity() -> Int {
        return opportunity
    }
}

