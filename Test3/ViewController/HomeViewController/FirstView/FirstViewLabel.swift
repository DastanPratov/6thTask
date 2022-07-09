//
//  FirstViewLabel.swift
//  Test3
//
//  Created by Dastan on 6/7/22.
//

import UIKit

class FirstViewLabel: UIView {
    
    private let clockLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.627, green: 0.596, blue: 0.682, alpha: 1)
        label.font = UIFont(name: "Poppins-Regular", size: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let imageWeather: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let temperatureLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.212, green: 0.231, blue: 0.392, alpha: 1)
        label.font = UIFont(name: "Poppins-Regular", size: 14)
        label.numberOfLines = 0
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
        addSubview(clockLabel)
        addSubview(imageWeather)
        addSubview(temperatureLabel)
    }
    
    private func setupConstraints() {
        let constraints =
        [
            clockLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            clockLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 6.6),
            clockLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -277.09),
            
            imageWeather.topAnchor.constraint(equalTo: topAnchor, constant: 26),
            imageWeather.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 4),
            
            temperatureLabel.topAnchor.constraint(equalTo: topAnchor, constant: 64),
            temperatureLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5.3)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    func setData(clock: String, image: String, temperature: String) {
        clockLabel.text = clock
        imageWeather.image = UIImage(named: image)
        temperatureLabel.text = temperature
    }
}
