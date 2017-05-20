//
//  AnswerViewController.swift
//  SnapKitNote
//
//  Created by Shohei Komura on 2017/05/20.
//  Copyright © 2017年 Shohei Komura. All rights reserved.
//

import UIKit
import SnapKit

enum QuestionNumber: String {
    case q1 = "Q1. viewを画面の中央に配置"
    case q2 = "Q2. 画面の中央から少しずれた位置にviewを配置"
    case q3 = "Q3. viewを画面の中央に配置"
    case q4 = "Q4. 画面サイズのviewを配置"
    case q5 = "Q5. 画面の左下を基準にした位置に固定サイズのviewを配置"
    case q6 = "Q6. 画面の下から画面幅の複数のviewを高さ固定で配置"
    case q7 = "Q7. 画面の下から画面幅のviewを縦横の比率を固定で積み上げて配置"
    case q8 = "Q8. 画面中央に画面サイズの60%の幅のImageViewを配置"
    case q9 = "Q9. 画面の上から画面の縦40%の高さのviewを配置"
    case q10 = "Q10. 画面を上下に分割して分割した領域の中央にviewを配置"
    case q11 = "Q11. 複数のviewを同じ幅で並べて配置"
    case q12 = "Q12. 複数のviewを等間隔で並べて配置"
    
    static let allValues = [q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12]
}

protocol QuestionStrategy {
    func execute() -> UIView
}

class AnswerViewController: UIViewController {
    
    var questionNumber: QuestionNumber! {
        didSet {
            drawViews()
        }
    }    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white

    }
    
    func drawViews() {
        let view = execute(question: self.questionNumber).execute()
        self.view.addSubview(view)
        
        view.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(0)
            make.leading.equalTo(0)
            make.bottom.equalTo(0)
            make.trailing.equalTo(0)
        }
    }
    
    private func execute(question: QuestionNumber) -> QuestionStrategy {
        switch question {
        case .q1, .q3:
            // viewを画面の中央に配置
            return Question1()
        case .q2:
            // 画面の中央から少しずれた位置にviewを配置
            return Question2()
        case .q4:
            // 画面サイズのviewを配置
            return Question4()
        case .q5:
            // 画面の左下を基準にした位置に固定サイズのviewを配置
            return Question5()
        case .q6:
            // 画面の下から画面幅の複数のviewを高さ固定で配置
            return Question6()
        case .q7:
            // 画面の下から画面幅のviewを縦横の比率を固定で積み上げて配置
            return Question7()
        case .q8:
            // 画面中央に画面サイズの60%の幅のImageViewを配置
            return Question8()
        case .q9:
            // 画面の上から画面の縦40%の高さのviewを配置
            return Question9()
        case .q10:
            // 画面を上下に分割して分割した領域の中央にviewを配置
            return Question10()
        case .q11:
            // 複数のviewを同じ幅で並べて配置
            return Question11()
        case .q12:
            // 複数のviewを等間隔で並べて配置
            return Question12()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

