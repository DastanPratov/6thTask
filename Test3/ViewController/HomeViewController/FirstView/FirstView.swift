//
//  FirstView.swift
//  Test3
//
//  Created by Dastan on 6/7/22.
//

import UIKit

class FirstView: UIView {
    
    private let weatherLaber: UILabel = {
        let label = UILabel()
        label.attributedText = NSMutableAttributedString(string: "Weather", attributes: [NSAttributedString.Key.kern: 0.05])
        label.textColor = UIColor(red: 0.212, green: 0.231, blue: 0.392, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont(name: "Poppins-SemiBold", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let forecastLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.627, green: 0.596, blue: 0.682, alpha: 1)
        label.text = "Partly Cloudly"
        label.font = UIFont(name: "Poppins-Regular", size: 14)
        label.frame = CGRect(x: 0, y: 0, width: 152.09, height: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let dateLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.212, green: 0.231, blue: 0.392, alpha: 1)
        label.attributedText = NSMutableAttributedString(string: "August, 10th 2020", attributes: [NSAttributedString.Key.kern: 0.3])
        label.font = UIFont(name: "Poppins-SemiBold", size: 16)

        label.leadingAnchor.constraint(equalTo: label.leadingAnchor, constant: 51).isActive = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let someButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "someButton"), for: .normal)
        button.tintColor = UIColor(red: 0.212, green: 0.231, blue: 0.392, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func someButtonAction() {
        print("Some button pressed")
    }
    
    private let weatherView: WeatherView = {
        let view = WeatherView()
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
        setupSubview()
        setupContraints()
    }
    
    private func setupSubview() {
        addSubview(weatherLaber)
        addSubview(forecastLabel)
        addSubview(dateLabel)
        addSubview(someButton)
        someButton.addTarget(self, action: #selector(someButtonAction), for: .touchUpInside)
        addSubview(weatherView)
    }
    
    private func setupContraints() {
        let contraints =
        [
            weatherLaber.bottomAnchor.constraint(equalTo: topAnchor, constant: -16),
            weatherLaber.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 136),
            
            forecastLabel.topAnchor.constraint(equalTo: topAnchor, constant: 22),
            forecastLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            
            dateLabel.topAnchor.constraint(equalTo: forecastLabel.bottomAnchor, constant: 8),
            dateLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            
            someButton.topAnchor.constraint(equalTo: topAnchor, constant: 44),
            someButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -29),
            someButton.heightAnchor.constraint(equalToConstant: 10),
            
            weatherView.topAnchor.constraint(equalTo: topAnchor, constant: 98),
            weatherView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            weatherView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            weatherView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -26)
        ]
        NSLayoutConstraint.activate(contraints)
    }
}
