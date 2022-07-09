//
//  MenuVC.swift
//  Test3
//
//  Created by Dastan on 7/7/22.
//

import UIKit

class MenuViewController: UIViewController {
    
    private let menuContentView: MenuContentView = {
        let view = MenuContentView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let gradientBackground = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        gradientBackground.frame = view.bounds
        gradientBackground.colors =
            [
                UIColor(red: 0.236, green: 0.435, blue: 0.821, alpha: 1).cgColor,
                UIColor(red: 0.236, green: 0.435, blue: 0.821, alpha: 1).cgColor,
                UIColor(red: 0.488, green: 0.662, blue: 1, alpha: 1).cgColor
            ]
        view.layer.insertSublayer(gradientBackground, at: 0)
    }

    private func setup() {
        setupSubview()
        setupConstraints()
    }
    
    private func setupSubview() {
        view.addSubview(menuContentView)
    }
    
    private func setupConstraints() {
        let constraints =
        [
            menuContentView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            menuContentView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            menuContentView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -0),
            menuContentView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -0),
        ]
        NSLayoutConstraint.activate(constraints)
    }


}
