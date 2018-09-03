//
//  QuestionTableViewCell.swift
//  Q&A
//
//  Created by Daniela Parra on 9/2/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    //Outlets to labels in custom cell.
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var changingLabel: UILabel!
    
}
