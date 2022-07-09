//
//  SecondView.swift
//  Test3
//
//  Created by Dastan on 6/7/22.
//

import UIKit

class SecondView: UIView {
    
    private let forecastLaber: UILabel = {
        let label = UILabel()
        label.attributedText = NSMutableAttributedString(string: "Forecast", attributes: [NSAttributedString.Key.kern: 0.05])
        label.textColor = UIColor(red: 0.212, green: 0.231, blue: 0.392, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont(name: "Poppins-Medium", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let forecastWeatherLabel: UILabel = {
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
    
    private let someSecondButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "someButton"), for: .normal)
        button.tintColor = UIColor(red: 0.212, green: 0.231, blue: 0.392, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    @objc func someButtonAction() {
        print("Some second button pressed")
    }
    
    
    private let mondayLabel: WeeklyForecastVC = {
        let label = WeeklyForecastVC()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let tuesdayLabel: WeeklyForecastVC = {
        let label = WeeklyForecastVC()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let wednesdayLabel: WeeklyForecastVC = {
        let label = WeeklyForecastVC()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let thursdayLabel: WeeklyForecastVC = {
        let label = WeeklyForecastVC()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let fridayLabel: WeeklyForecastVC = {
        let label = WeeklyForecastVC()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let saturdayLabel: WeeklyForecastVC = {
        let label = WeeklyForecastVC()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
        
        mondayLabel.setData(image: "sunny", days: "Monday", Ftemp: "72º", Ctemp: "28º")
        tuesdayLabel.setData(image: "cloudy", days: "Tuesday", Ftemp: "73º", Ctemp: "27º")
        wednesdayLabel.setData(image: "mainlyCloudy", days: "Wednesday", Ftemp: "73º", Ctemp: "26º")
        thursdayLabel.setData(image: "someRainy", days: "Thursday", Ftemp: "73º", Ctemp: "22º")
        fridayLabel.setData(image: "rainy", days: "Friday", Ftemp: "73º", Ctemp: "25º")
        saturdayLabel.setData(image: "rainy", days: "Saturday", Ftemp: "69º", Ctemp: "22º")
    }
    
    private func setupSubview() {
        addSubview(forecastLaber)
        addSubview(forecastWeatherLabel)
        addSubview(dateLabel)
        addSubview(someSecondButton)
        someSecondButton.addTarget(self, action: #selector(someButtonAction), for: .touchUpInside)
        
        addSubview(mondayLabel)
        addSubview(tuesdayLabel)
        addSubview(wednesdayLabel)
        addSubview(thursdayLabel)
        addSubview(fridayLabel)
        addSubview(saturdayLabel)
    }
    
    private func setupContraints() {
        let contraints =
        [
            forecastLaber.bottomAnchor.constraint(equalTo: topAnchor, constant: -8),
            
            forecastWeatherLabel.topAnchor.constraint(equalTo: topAnchor, constant: 24),
            forecastWeatherLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            
            dateLabel.topAnchor.constraint(equalTo: topAnchor, constant: 53),
            dateLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            
            someSecondButton.topAnchor.constraint(equalTo: topAnchor, constant: 44),
            someSecondButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -29),
            someSecondButton.heightAnchor.constraint(equalToConstant: 10),
            
            mondayLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 17),
            mondayLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 2),
            
            tuesdayLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 62),
            tuesdayLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 2),
            
            wednesdayLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 109),
            wednesdayLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 2),
            
            thursdayLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 155),
            thursdayLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 2),
            
            fridayLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 201),
            fridayLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 2),
            
            saturdayLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 247),
            saturdayLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 2)
            
            
        ]
        NSLayoutConstraint.activate(contraints)
    }
}

