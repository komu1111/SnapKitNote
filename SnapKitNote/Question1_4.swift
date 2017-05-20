//
//  Question1_4.swift
//  SnapKitNote
//
//  Created by Shohei Komura on 2017/05/20.
//  Copyright © 2017年 Shohei Komura. All rights reserved.
//


import UIKit
import SnapKit

// viewを画面の中央に配置
class Question1: QuestionStrategy {
    func execute() -> UIView {
        let bgView = UIView()
        
        let grayView = UIView()
        grayView.backgroundColor = UIColor.gray
        bgView.addSubview(grayView)
        
        grayView.snp.makeConstraints { (make) -> Void in
            make.size.equalTo(CGSize(width: 100, height: 100))
            make.center.equalToSuperview()
        }
        return bgView
    }
}

// 画面の中央から少しずれた位置にviewを配置
class Question2: QuestionStrategy {
    func execute() -> UIView {
        let bgView = UIView()
        
        let grayView = UIView()
        grayView.backgroundColor = UIColor.gray
        bgView.addSubview(grayView)
        
        grayView.snp.makeConstraints { (make) -> Void in
            make.size.equalTo(CGSize(width: 100, height: 100))
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-50)
        }
        return bgView
    }
}

// 画面サイズのviewを配置
class Question4: QuestionStrategy {
    func execute() -> UIView {
        let bgView = UIView()
        
        let grayView = UIView()
        grayView.backgroundColor = UIColor.gray
        bgView.addSubview(grayView)
        
        grayView.snp.makeConstraints { (make) -> Void in
            make.size.equalTo(CGSize(width: UIUtil.deviceWidth, height: UIUtil.deviceHeight))
        }
        return bgView
    }
}

