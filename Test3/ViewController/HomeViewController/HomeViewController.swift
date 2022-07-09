//
//  HomeViewController.swift
//  Test3
//
//  Created by Dastan on 7/7/22.
//

import Foundation
import UIKit

protocol HomeViewControllerDelegate: AnyObject {
    func didTapMenuButton()
}

class HomeViewController: UIViewController {
    
    weak var delegate: HomeViewControllerDelegate?
    
    private let homeVC: HomeVC = {
        let view = HomeVC()
        view.backgroundColor = UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let searchButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func searchButtonAction() {
        print("Search button pressed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "sidebarButton"),
                                                           style: .done,
                                                           target: self,
                                                           action: #selector(didTapMenuButton))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "searchButton"),
                                                            style: .done,
                                                            target: self,
                                                            action: #selector(searchButtonAction))
    }
    
    @objc func didTapMenuButton() {
        delegate?.didTapMenuButton()
        print("Sidebar button pressed")
    }

    private func setup() {
        setupSubview()
        setupConstraints()
    }
    
    private func setupSubview() {
        view.addSubview(homeVC)
        view.addSubview(searchButton)
    }
    
    private func setupConstraints() {
        let constraints =
        [
            homeVC.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            homeVC.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            homeVC.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            homeVC.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
        ]
        NSLayoutConstraint.activate(constraints)
    }


}
