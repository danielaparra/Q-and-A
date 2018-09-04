//
//  QuestionTableViewController.swift
//  Q&A
//
//  Created by Daniela Parra on 9/2/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return questionController.questions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath) as? QuestionTableViewCell else {return UITableViewCell()}
        
        let question = questionController.questions[indexPath.row]
        
        cell.question = question

        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            //Delete the question that corresponds to the cell
            let question = questionController.questions[indexPath.row]
            questionController.delete(question: question)
            
            //Delete the cell
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Pass question model to answer question scene.
        if segue.identifier == "AnswerQuestion" {
            guard let destinationVC = segue.destination as? AnswerViewController else {return}
            
            destinationVC.questionController = questionController
        }
    }
    
    var questionController = QuestionController()
}
