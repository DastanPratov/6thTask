//
//  MenuContentView.swift
//  Test3
//
//  Created by Dastan on 7/7/22.
//

import UIKit

class MenuContentView: UIView {
    
    private let locationLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Poppins-Regular", size: 14)
        label.attributedText = NSMutableAttributedString(string: "Current location", attributes: [NSAttributedString.Key.kern: 0.3])
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }()
    
    
    
    private let currentLocationLabel: MenuLocationBoldVC = {
        let label = MenuLocationBoldVC()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let addLocationExtraButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 14, height: 27)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let addLocationButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "locationAdd"), for: .normal)
        button.frame = CGRect(x: 0, y: 0, width: 14, height: 130)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func didAddLocationButtonTap() {
        print("Add button pressed")
    }
    
    private let addButtonLabel: UILabel = {
        let label = UILabel()
        label.attributedText = NSMutableAttributedString(string: "Add Location", attributes: [NSAttributedString.Key.kern: 0.3])
        label.font = UIFont(name: "Poppins-SemiBold", size: 18)
        label.textColor = UIColor(red: 0.984, green: 0.976, blue: 0.62, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    
    private let firstLocationLabel: MenuLocationVC = {
        let label = MenuLocationVC()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let firstLocationButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 14, height: 27)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func didFirstLocationButtonTap() {
        print("First location button pressed")
    }
    
    
    
    
    private let secondLocationLabel: MenuLocationVC = {
        let label = MenuLocationVC()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let secondLocationButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 14, height: 27)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func didSecondLocationButtonTap() {
        print("Second location button pressed")
    }
    
    
    

    private let thirdLocationLabel: MenuLocationVC = {
        let label = MenuLocationVC()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let thirdLocationButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 14, height: 27)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func didThirdLocationButtonTap() {
        print("Third location button pressed")
    }

    
    
    private let settingsLabelButton: UIButton = {
        let button = UIButton()
        button.setTitle("Settings", for: UIControl.State.normal)
        button.tintColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        button.titleLabel?.font = UIFont(name: "Poppins-SemiBold", size: 18)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func didSettingButtonTap() {
        print("Setting's button pressed")
    }
    
    
    
    private let shareLabelButton: UIButton = {
        let button = UIButton()
        button.setTitle("Share this app", for: UIControl.State.normal)
        button.tintColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        button.titleLabel?.font = UIFont(name: "Poppins-SemiBold", size: 18)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func didShareButtonTap() {
        print("Share's button pressed")
    }
    
    
    private let rateLabelButton: UIButton = {
        let button = UIButton()
        button.setTitle("Rate this app", for: UIControl.State.normal)
        button.tintColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        button.titleLabel?.font = UIFont(name: "Poppins-SemiBold", size: 18)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func didRateButtonTap() {
        print("Rate's button pressed")
    }
    
    
    
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
        
        currentLocationLabel.setData(image: "location", location: "Berlin, Germany")
        firstLocationLabel.setData(image: "location", location: "Berlin, Germany")
        secondLocationLabel.setData(image: "location", location: "Livelpool, UK")
        thirdLocationLabel.setData(image: "location", location: "Washington, USA")
        
        addLocationButton.addTarget(self, action: #selector(didAddLocationButtonTap), for: .touchUpInside)
        addLocationExtraButton.addTarget(self, action: #selector(didAddLocationButtonTap), for: .touchUpInside)
        
        firstLocationButton.addTarget(self, action: #selector(didFirstLocationButtonTap), for: .touchUpInside)
        
        secondLocationButton.addTarget(self, action: #selector(didSecondLocationButtonTap), for: .touchUpInside)
        
        thirdLocationButton.addTarget(self, action: #selector(didThirdLocationButtonTap), for: .touchUpInside)
        
        settingsLabelButton.addTarget(self, action: #selector(didSettingButtonTap), for: .touchUpInside)
        shareLabelButton.addTarget(self, action: #selector(didShareButtonTap), for: .touchUpInside)
        rateLabelButton.addTarget(self, action: #selector(didRateButtonTap), for: .touchUpInside)
    }
    
    private func setupSubviews() {
        addSubview(locationLabel)
        addSubview(currentLocationLabel)
        addSubview(addLocationButton)
        addSubview(addButtonLabel)
        addSubview(addLocationExtraButton)
        
        addSubview(firstLocationLabel)
        addSubview(firstLocationButton)
        
        addSubview(secondLocationLabel)
        addSubview(secondLocationButton)
        
        addSubview(thirdLocationLabel)
        addSubview(thirdLocationButton)
        
        addSubview(settingsLabelButton)
        addSubview(shareLabelButton)
        addSubview(rateLabelButton)
    }
    
    private func setupConstraints() {
        let constraints =
        [
            locationLabel.topAnchor.constraint(equalTo: topAnchor, constant: 73),
            locationLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 21),
            
            currentLocationLabel.topAnchor.constraint(equalTo: topAnchor, constant: 110),
            currentLocationLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            
            addLocationButton.topAnchor.constraint(equalTo: currentLocationLabel.bottomAnchor, constant: 134.5),
            addLocationButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            addButtonLabel.topAnchor.constraint(equalTo: currentLocationLabel.bottomAnchor, constant: 134.5),
            addButtonLabel.leadingAnchor.constraint(equalTo: addLocationButton.trailingAnchor, constant: 9),
            addLocationExtraButton.topAnchor.constraint(equalTo: currentLocationLabel.bottomAnchor, constant: 134.5),
            addLocationExtraButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 48),
            addLocationExtraButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -176),
            
            firstLocationLabel.topAnchor.constraint(equalTo: addButtonLabel.bottomAnchor, constant: 24),
            firstLocationLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            firstLocationButton.topAnchor.constraint(equalTo: addButtonLabel.bottomAnchor, constant: 24),
            firstLocationButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            firstLocationButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -176),
            
            secondLocationLabel.topAnchor.constraint(equalTo: addButtonLabel.bottomAnchor, constant: 75),
            secondLocationLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            secondLocationButton.topAnchor.constraint(equalTo: addButtonLabel.bottomAnchor, constant: 75),
            secondLocationButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            secondLocationButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -176),
            
            thirdLocationLabel.topAnchor.constraint(equalTo: addButtonLabel.bottomAnchor, constant: 126),
            thirdLocationLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            thirdLocationButton.topAnchor.constraint(equalTo: addButtonLabel.bottomAnchor, constant: 126),
            thirdLocationButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            thirdLocationButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -176),
            
            settingsLabelButton.topAnchor.constraint(equalTo: thirdLocationLabel.bottomAnchor, constant: 148),
            settingsLabelButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            shareLabelButton.topAnchor.constraint(equalTo: settingsLabelButton.bottomAnchor, constant: 16),
            shareLabelButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            rateLabelButton.topAnchor.constraint(equalTo: shareLabelButton.bottomAnchor, constant: 16),
            rateLabelButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
}
