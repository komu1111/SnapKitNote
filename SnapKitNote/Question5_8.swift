//
//  Question5_8.swift
//  SnapKitNote
//
//  Created by Shohei Komura on 2017/05/20.
//  Copyright © 2017年 Shohei Komura. All rights reserved.
//

import UIKit

// 画面の左下を基準にした位置に固定サイズのviewを配置
class Question5: QuestionStrategy {
    func execute() -> UIView {
        let bgView = UIView()
        
        let grayView = UIView()
        grayView.backgroundColor = UIColor.gray
        bgView.addSubview(grayView)
        
        grayView.snp.makeConstraints { (make) -> Void in
            make.size.equalTo(CGSize(width: 100, height: 100))
            make.leading.equalTo(bgView.snp.leading).offset(20)
            make.bottom.equalTo(bgView.snp.bottom).offset(-20)
        }
        return bgView
    }
}

// 画面の下から画面幅の複数のviewを高さ固定で配置
class Question6: QuestionStrategy {
    func execute() -> UIView {
        let bgView = UIView()
        
        let grayView = UIView()
        grayView.backgroundColor = UIColor.gray
        bgView.addSubview(grayView)
        
        let brownView = UIView()
        brownView.backgroundColor = UIColor.brown
        bgView.addSubview(brownView)
        
        let orangeView = UIView()
        orangeView.backgroundColor = UIColor.orange
        bgView.addSubview(orangeView)
        
        
        grayView.snp.makeConstraints { (make) -> Void in
            make.size.equalTo(CGSize(width: UIUtil.deviceWidth, height: 50))
            make.leading.bottom.trailing.equalTo(0)
        }
        
        brownView.snp.makeConstraints { (make) -> Void in
            make.size.equalTo(CGSize(width: UIUtil.deviceWidth, height: 50))
            make.leading.trailing.equalTo(0)
            make.bottom.equalTo(grayView.snp.top).offset(0)
        }
        
        orangeView.snp.makeConstraints { (make) -> Void in
            make.size.equalTo(CGSize(width: UIUtil.deviceWidth, height: 50))
            make.leading.trailing.equalTo(0)
            make.bottom.equalTo(brownView.snp.top).offset(0)
        }
        
        return bgView
    }
}

// 画面の下から画面幅のviewを縦横の比率を固定で積み上げて配置
class Question7: QuestionStrategy {
    func execute() -> UIView {
        let bgView = UIView(frame: CGRect(x: 0, y: 0, width: UIUtil.deviceWidth, height: UIUtil.deviceHeight))
        
        let grayView = UIView()
        grayView.backgroundColor = UIColor.gray
        bgView.addSubview(grayView)
        
        let brownView = UIView()
        brownView.backgroundColor = UIColor.brown
        bgView.addSubview(brownView)
        
        let orangeView = UIView()
        orangeView.backgroundColor = UIColor.orange
        bgView.addSubview(orangeView)
        
        grayView.snp.makeConstraints { (make) -> Void in
            make.leading.trailing.bottom.equalTo(0)
            make.size.equalTo(UIUtil.deviceWidth.multiplied(by: 9/50))
        }
        
        brownView.snp.makeConstraints { (make) -> Void in
            make.size.equalTo(UIUtil.deviceWidth.multiplied(by: 9/50))
            make.leading.trailing.equalTo(0)
            make.bottom.equalTo(grayView.snp.top).offset(0)
        }
        
        orangeView.snp.makeConstraints { (make) -> Void in
            make.size.equalTo(UIUtil.deviceWidth.multiplied(by: 9/50))
            make.leading.trailing.equalTo(0)
            make.bottom.equalTo(brownView.snp.top).offset(0)
        }
        return bgView
    }
}

// 画面中央に画面サイズの60%の幅のviewを配置
class Question8: QuestionStrategy {
    func execute() -> UIView {
        let bgView = UIView()
        
        let imageView = UIImageView(image: UIImage(named: "tiger"))
        bgView.addSubview(imageView)
        
        let width = UIUtil.deviceWidth * 0.6
        
        imageView.snp.makeConstraints { (make) -> Void in
            make.center.equalToSuperview()
            make.height.equalTo(imageView.snp.width).multipliedBy( width / UIUtil.deviceWidth )
        }
        
        return bgView
    }
}

