//
//  QuestionViewController.swift
//  SnapKitNote
//
//  Created by Shohei Komura on 2017/05/20.
//  Copyright © 2017年 Shohei Komura. All rights reserved.
//

import UIKit

class QuestionViewController: UITableViewController {
    
    private var questionList: [QuestionNumber] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "AutoLayout徹底攻略の解答"
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        for q in QuestionNumber.allValues {
            questionList.append(q)
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for:indexPath) as UITableViewCell
        cell.textLabel?.text = questionList[indexPath.row].rawValue
        cell.textLabel?.font = UIFont.systemFont(ofSize: 12)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionList.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let number = questionList[indexPath.row]
        let answerViewController = AnswerViewController()
        self.navigationController?.pushViewController(answerViewController, animated: true)
        answerViewController.questionNumber = number
    }
}

