//
//  Question9_12.swift
//  SnapKitNote
//
//  Created by Shohei Komura on 2017/05/20.
//  Copyright © 2017年 Shohei Komura. All rights reserved.
//

import UIKit

// 画面の上から何%(40%)いっぱいにViewを表示
class Question9: QuestionStrategy {
    func execute() -> UIView {
        let bgView = UIView()
        
        let grayView = UIView()
        grayView.backgroundColor = UIColor.gray
        bgView.addSubview(grayView)
        
        grayView.snp.makeConstraints { (make) -> Void in
            make.trailing.top.leading.equalTo(0)
            make.height.equalToSuperview().multipliedBy(0.4)
        }
        
        return bgView
    }
}

// 画面を上下に分割して分割した領域の中央にviewを配置
class Question10: QuestionStrategy {
    func execute() -> UIView {
        let bgView = UIView()
        
        let grayView = UIView()
        grayView.backgroundColor = UIColor.gray
        bgView.addSubview(grayView)
        
        let orangeView = UIView()
        orangeView.backgroundColor = UIColor.orange
        grayView.addSubview(orangeView)
        
        grayView.snp.makeConstraints { (make) -> Void in
            make.trailing.top.leading.equalTo(0)
            make.height.equalToSuperview().multipliedBy(0.5)
        }
        
        orangeView.snp.makeConstraints { (make) -> Void in
            make.center.equalToSuperview()
            make.height.equalTo(100)
            make.width.equalTo(150)
        }
        return bgView
    }
}

// 複数のviewを同じ幅で並べて配置
class Question11: QuestionStrategy {
    func execute() -> UIView {
        let bgView = UIView()
        
        let grayView = UIView()
        grayView.backgroundColor = UIColor.gray
        bgView.addSubview(grayView)
        
        let orangeView = UIView()
        orangeView.backgroundColor = UIColor.orange
        bgView.addSubview(orangeView)
        
        let brownView = UIView()
        brownView.backgroundColor = UIColor.brown
        bgView.addSubview(brownView)
        
        grayView.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(100)
            make.leading.equalTo(0)
            make.size.height.equalTo(100)
            make.size.width.equalTo(orangeView)
            make.trailing.equalTo(orangeView.snp.leading).offset(0)
        }
        
        orangeView.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(100)
            make.leading.equalTo(grayView.snp.trailing).offset(0)
            make.size.height.equalTo(100)
            make.size.width.equalTo(grayView)
            make.trailing.equalTo(brownView.snp.leading).offset(0)
        }
        
        brownView.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(100)
            make.leading.equalTo(orangeView.snp.trailing).offset(0)
            make.size.height.equalTo(100)
            make.size.width.equalTo(orangeView)
            make.trailing.equalTo(0)
        }
        return bgView
    }
}

// 複数のViewを等間隔で並べて表示したい時
class Question12: QuestionStrategy {
    func execute() -> UIView {
        
        let bgView = UIView()
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .center
        stack.distribution = .equalSpacing
        
        let grayView = UIView()
        grayView.backgroundColor = UIColor.gray
        
        let orangeView = UIView()
        orangeView.backgroundColor = UIColor.orange
        
        let brownView = UIView()
        brownView.backgroundColor = UIColor.brown
        
        grayView.snp.makeConstraints { (make) -> Void in
            make.size.equalTo(50)
        }
        
        orangeView.snp.makeConstraints { (make) -> Void in
            make.size.equalTo(50)
        }
        
        brownView.snp.makeConstraints { (make) -> Void in
            make.size.equalTo(50)
        }
        
        stack.addArrangedSubview(grayView)
        stack.addArrangedSubview(orangeView)
        stack.addArrangedSubview(brownView)
        bgView.addSubview(stack)
        
        stack.snp.makeConstraints { (make) -> Void in
            make.center.equalToSuperview()
            make.leading.trailing.equalTo(0)
        }
        return bgView
    }
}

