//
//  WeeklyForecastVC.swift
//  Test3
//
//  Created by Dastan on 9/7/22.
//

import UIKit

class WeeklyForecastVC: UIView {
    
    private let imageWeather: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let daysOfTheWeek: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.212, green: 0.231, blue: 0.392, alpha: 1)
        label.font = UIFont(name: "Poppins-Regular", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private let fTemperatureLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.212, green: 0.231, blue: 0.392, alpha: 1)
        label.font = UIFont(name: "Poppins-Regular", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let slashLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.212, green: 0.231, blue: 0.392, alpha: 1)
        label.font = UIFont(name: "Poppins-Regular", size: 14)
        label.text = "/"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let cTemperatureLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.212, green: 0.231, blue: 0.392, alpha: 1)
        label.font = UIFont(name: "Poppins-Regular", size: 14)
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
        setupSubviews()
        setupConstraints()
    }
    
    private func setupSubviews() {
        addSubview(imageWeather)
        addSubview(daysOfTheWeek)
        addSubview(fTemperatureLabel)
        addSubview(slashLabel)
        addSubview(cTemperatureLabel)
    }
    
    private func setupConstraints() {
        let constraints =
        [
            imageWeather.topAnchor.constraint(equalTo: topAnchor, constant: 7),
            imageWeather.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            
            daysOfTheWeek.topAnchor.constraint(equalTo: topAnchor, constant: 11),
            daysOfTheWeek.leadingAnchor.constraint(equalTo: imageWeather.trailingAnchor, constant: 16.68),
            
            fTemperatureLabel.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            fTemperatureLabel.leadingAnchor.constraint(equalTo: imageWeather.trailingAnchor, constant: 199.1),
            
            slashLabel.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            slashLabel.leadingAnchor.constraint(equalTo: fTemperatureLabel.trailingAnchor, constant: 4),
            
            cTemperatureLabel.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            cTemperatureLabel.leadingAnchor.constraint(equalTo: slashLabel.trailingAnchor, constant: 4)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    func setData(image: String, days: String, Ftemp: String, Ctemp: String) {
        imageWeather.image = UIImage(named: image)
        daysOfTheWeek.text = days
        fTemperatureLabel.text = Ftemp
        cTemperatureLabel.text = Ctemp
    }
}

