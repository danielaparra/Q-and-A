//
//  QuestionController.swift
//  Q&A
//
//  Created by Daniela Parra on 9/2/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

import Foundation

class QuestionController {
    
    //Create new question.
    func createQuestion(question: String, asker: String) {
        //Creates a new question model.
        let question = Question(question: question, asker: asker)
        
        //Adds question to array.
        questions.append(question)
    }
    
    //Update answer and answerer information to the appropiate question.
    func updateQuestion(question: Question, answer: String, answerer: String) {
        guard let index = questions.index(of: question) else {return}
        
        //Create updated question model with added information.
        var tempQuestion = question
        tempQuestion.answer = answer
        tempQuestion.answerer = answerer
        
        //Removes original model and replaces it with updated model.
        questions.remove(at: index)
        questions.insert(tempQuestion, at: index)
    }
    
    //Delete question.
    func deleteQuestion(question: Question) {
        //Get index of question.
        guard let index = questions.index(of: question) else {return}
        questions.remove(at: index)
    }
    
    private(set) var questions: [Question] = []
}
