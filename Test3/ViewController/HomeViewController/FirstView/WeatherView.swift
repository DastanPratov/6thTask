//
//  WeatherView.swift
//  Test3
//
//  Created by Dastan on 6/7/22.
//

import UIKit

class WeatherView: UIView {

    
    private let firstIndex: FirstViewLabel = {
        let index = FirstViewLabel()
        index.translatesAutoresizingMaskIntoConstraints = false
        return index
    }()
    
    private let secondIndex: FirstViewLabel = {
        let index = FirstViewLabel()
        index.translatesAutoresizingMaskIntoConstraints = false
        return index
    }()
    
    private let thirdIndex: FirstViewLabel = {
        let index = FirstViewLabel()
        index.translatesAutoresizingMaskIntoConstraints = false
        return index
    }()
    
    private let fourthIndex: FirstViewLabel = {
        let index = FirstViewLabel()
        index.translatesAutoresizingMaskIntoConstraints = false
        return index
    }()
    
    private let fifthIndex: FirstViewLabel = {
        let index = FirstViewLabel()
        index.translatesAutoresizingMaskIntoConstraints = false
        return index
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
        
        firstIndex.setData(clock: "2 PM", image: "sunny", temperature: "72ºF")
        secondIndex.setData(clock: "3 PM", image: "cloudy", temperature: "70ºF")
        thirdIndex.setData(clock: "4 PM", image: "someRainy", temperature: "69ºF")
        fourthIndex.setData(clock: "5 PM", image: "mainlyCloudy", temperature: "75ºF")
        fifthIndex.setData(clock: "6 PM", image: "rainy", temperature: "76ºF")
    }
    
    private func setupSubviews() {
        addSubview(firstIndex)
        addSubview(secondIndex)
        addSubview(thirdIndex)
        addSubview(fourthIndex)
        addSubview(fifthIndex)
    }
    
    private func setupConstraints() {
        let constraints =
        [
            firstIndex.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            firstIndex.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -0),
            
            secondIndex.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            secondIndex.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 66.01),
            
            thirdIndex.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 132.03),
            
            fourthIndex.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 198.04),
            
            fifthIndex.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 264.06)
        ]
        NSLayoutConstraint.activate(constraints)
    }
}
