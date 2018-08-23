//
//  ViewController.swift
//  RecursionDemo
//
//
//  A exercise file for iOS Development Tips Weekly
//  by Steven Lipton (C)2018, All rights reserved
//  For videos go to http://bit.ly/TipsLinkedInLearning
//  For code go to http://bit.ly/AppPieGithub
//

import UIKit

class ViewController: UIViewController {

    func viewFormat(view:UIView){
        view.layer.shadowOpacity = 0.9
        view.layer.shadowRadius = 5.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 3, height: 3)
        if view.frame.width > view.frame.height{
            view.layer.cornerRadius = view.frame.height / 2.0
        } else {
            view.layer.cornerRadius = view.frame.width / 2.0
        }
    }
    
    func findButton(view:UIView,level:Int = 0){
        print("Subview count: \(view.subviews.count) Level: \(level)")
        if view.subviews.count >= 0{
            for subview in view.subviews{
                findButton(view: subview,level: level + 1)
            }
        }
        if let button = view as? UIButton{
            button.setTitle("Level \(level)", for: .normal)
            button.setTitleColor(.white, for: .normal)
            viewFormat(view: button)
        }
    }
    
    override func viewDidLayoutSubviews() {
        findButton(view: self.view)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

