//
//  HomeVC.swift
//  Test3
//
//  Created by Dastan on 7/7/22.
//

import UIKit

class HomeVC: UIView {
    
    private let firstView: FirstView = {
        let view = FirstView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 20
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let secondView: SecondView = {
        let view = SecondView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 20
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        setupSubviews()
        setupConstraints()
    }
    
    private func setupSubviews() {
        addSubview(firstView)
        addSubview(secondView)
    }
    
    private func setupConstraints() {
        let constraints =
        [
            firstView.topAnchor.constraint(equalTo: topAnchor, constant: 93),
            firstView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            firstView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            firstView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -510),
            
            secondView.topAnchor.constraint(equalTo: firstView.bottomAnchor, constant: 56),
            secondView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            secondView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            secondView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -69),
        ]
        NSLayoutConstraint.activate(constraints)
    }
}
