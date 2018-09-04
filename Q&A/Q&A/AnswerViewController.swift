//
//  AnswerViewController.swift
//  Q&A
//
//  Created by Daniela Parra on 9/3/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    
    func updateViews() {
        
    }
    
    //Submit answer as long as text field are filled out.
    @IBAction func submitAnswer(_ sender: Any) {
        guard let answerer = answerTextField.text,
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
