//
//  ViewController.swift
//  CircleLeftRightNonStop
//
//  Created by Karpinets Alexander on 07.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private let circleView = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
    private let squareView = UIView(frame: CGRect(x: 100, y: 100, width: 300, height: 200))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    @IBAction func goButton(_ sender: UIButton) {
        circleView.frame.origin.x += 100
        UIView.animate(withDuration: 1, delay: 1, options: .repeat) {
            self.circleView.frame.origin.x -= 200
        }
    }
    
    private func setupUI() {
        squareView.backgroundColor = .gray
        squareView.center = view.center
        squareView.layer.cornerRadius = 15
        view.addSubview(squareView)
        
        circleView.center = squareView.center
        circleView.backgroundColor = .red
        circleView.layer.cornerRadius = circleView.frame.size.width / 2
        view.addSubview(circleView)
    }
}

