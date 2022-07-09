//
//  MenuLocationBoldVC.swift
//  Test3
//
//  Created by Dastan on 8/7/22.
//

import UIKit

class MenuLocationBoldVC: UIView {
    
    private let locationImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let locationLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: "Poppins-Bold", size: 18)
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
        addSubview(locationLabel)
        addSubview(locationImage)
    }
    
    private func setupConstraints() {
        let constraints =
        [
            locationImage.topAnchor.constraint(equalTo: topAnchor, constant: 3.5),
            locationImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            
            locationLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            locationLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    func setData(image: String, location: String) {
        locationImage.image = UIImage(named: image)
        locationLabel.text = location
    }
}
