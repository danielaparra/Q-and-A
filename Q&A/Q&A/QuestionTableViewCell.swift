//
//  QuestionTableViewCell.swift
//  Q&A
//
//  Created by Daniela Parra on 9/2/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {
    
    //Update cell.
    func updateViews() {
        //Unwrap question model
        guard let question = question else {return}
        
        //Update labels in cell.
        questionLabel.text = question.question
        askerLabel.text = question.asker
        
    }
    
    //Update variable when change occurs
    var question: Question? {
        didSet {
            updateViews()
        }
    }

    //Outlets to labels in custom cell.
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var changingLabel: UILabel!
    
}
