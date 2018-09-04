//
//  AskQuestionViewController.swift
//  Q&A
//
//  Created by Daniela Parra on 9/3/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {

    //Calls to create question when button tapped.
    @IBAction func submitQuestion(_ sender: Any) {
        //Unwraps text before creating question model.
        guard let askerName = askerNameTextField.text,
            let questionText = questionTextView.text else {return}
        if askerName != "" && questionText != "" {
            questionController?.createQuestion(question: questionText, asker: askerName)
            navigationController?.popViewController(animated: true)
        }
        
    }
    
    var questionController: QuestionController?
    
    //Outlets to text fields and views in this view
    @IBOutlet weak var askerNameTextField: UITextField!
    @IBOutlet weak var questionTextView: UITextView!
}
