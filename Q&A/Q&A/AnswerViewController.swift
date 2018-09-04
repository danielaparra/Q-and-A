//
//  AnswerViewController.swift
//  Q&A
//
//  Created by Daniela Parra on 9/3/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    
    @IBAction func submitAnswer(_ sender: Any) {
        guard let answerer = answerTextField.text,
            let answer = answerTextField.text else {return}
        
        //Update designated question model
        if answerer != "" && answer != "" {
            
        }
    }
    
    var questionController: QuestionController?
    
    //Outlets
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answererTextField: UITextField!
    @IBOutlet weak var answerTextField: UITextField!
    
}
