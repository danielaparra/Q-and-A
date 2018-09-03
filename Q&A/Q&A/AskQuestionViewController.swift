//
//  AskQuestionViewController.swift
//  Q&A
//
//  Created by Daniela Parra on 9/3/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    //Calls to create question when button tapped.
    @IBAction func submitQuestion(_ sender: Any) {
        //Unwraps text before creating question model.
        guard let askerName = askerNameTextField.text,
            let questionText = questionTextView.text else {return}
        
    }
    
    //Outlets to text fields and views in this view
    @IBOutlet weak var askerNameTextField: UITextField!
    @IBOutlet weak var questionTextView: UITextView!
}
