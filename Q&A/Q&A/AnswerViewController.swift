//
//  AnswerViewController.swift
//  Q&A
//
//  Created by Daniela Parra on 9/3/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if isViewLoaded {
            updateViews()
        }
    }
    
    //Set up text labels and text fields.
    func updateViews() {
        guard let question = question else {return}
        questionLabel.text = question.question
        askerLabel.text = question.asker
        
        //Set text for answer and answerer if not nil
        guard let answer = question.answer,
            let answerer = question.answerer else {return}
        answerTextField.text = answer
        answererTextField.text = answerer
    }
    
    //Submit answer as long as text field are filled out.
    @IBAction func submitAnswer(_ sender: Any) {
        guard let answerer = answererTextField.text,
            let answer = answerTextField.text,
            let question = question else {return}
        
        //Update designated question model.
        if answerer != "" && answer != "" {
            questionController?.updateQuestion(question: question, answer: answer, answerer: answerer)
            
            //Pop to the previous controller.
            navigationController?.popViewController(animated: true)
        }
    }
    
    var question: Question?
    var questionController: QuestionController?
    
    //Outlets
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answererTextField: UITextField!
    @IBOutlet weak var answerTextField: UITextField!
    
}
