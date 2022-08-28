//
//  ViewTop.swift
//  DZWithTextFields
//
//  Created by Admin on 29.08.22.
//

import Foundation
import UIKit

protocol ViewTopDelegate {
    func fillThelabelWith(info: String)
}

class ViewTop {
    var delegate: ViewTopDelegate?
    var viewController: ViewController!
    
    let viewTop: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let image1: UIImageView = {
        let image = UIImageView(image: UIImage(named: "apple"))
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var firstLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "First"
        return label
    }()
    
    var middleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Middle"
        return label
    }()
    
    var lastLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Last"
        return label
    }()
    
    var firstTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Enter First Name"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    var middleTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Enter Middle Name"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    var lastTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Enter Last Name"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    func setupFirstLabel() {
        firstLabel.leftAnchor.constraint(equalTo: image1.rightAnchor, constant: 10).isActive = true
        firstLabel.rightAnchor.constraint(equalTo: firstTextField.leftAnchor, constant: -5).isActive = true
        firstLabel.widthAnchor.constraint(equalTo: viewTop.widthAnchor, multiplier: 1/7).isActive = true
        firstLabel.bottomAnchor.constraint(equalTo: middleLabel.topAnchor, constant: -20).isActive = true
        firstLabel.topAnchor.constraint(equalTo: viewTop.topAnchor, constant: 50).isActive = true
    }
    
    func setupMiddleLabel() {
        middleLabel.leftAnchor.constraint(equalTo: image1.rightAnchor, constant: 10).isActive = true
        middleLabel.rightAnchor.constraint(equalTo: middleTextField.leftAnchor, constant: -5).isActive = true
        middleLabel.widthAnchor.constraint(equalTo: viewTop.widthAnchor, multiplier: 1/7).isActive = true
        middleLabel.bottomAnchor.constraint(equalTo: lastLabel.topAnchor).isActive = true
        middleLabel.topAnchor.constraint(equalTo: firstTextField.bottomAnchor, constant: 20).isActive = true
    }
    
    func setupLastLabel() {
        lastLabel.leftAnchor.constraint(equalTo: image1.rightAnchor, constant: 10).isActive = true
        lastLabel.rightAnchor.constraint(equalTo: lastTextField.leftAnchor, constant: -5).isActive = true
        lastLabel.widthAnchor.constraint(equalTo: viewTop.widthAnchor, multiplier: 1/7).isActive = true
        lastLabel.bottomAnchor.constraint(equalTo: viewTop.bottomAnchor).isActive = true
        lastLabel.topAnchor.constraint(equalTo: middleTextField.bottomAnchor, constant: -5).isActive = true
    }
    
    func setupImage1() {
        image1.leftAnchor.constraint(equalTo: viewTop.leftAnchor).isActive = true
        image1.heightAnchor.constraint(equalToConstant: 120).isActive = true
        image1.topAnchor.constraint(equalTo: viewTop.topAnchor, constant: 50).isActive = true
    }
    
    func setupFirstTextField() {
        firstTextField.leftAnchor.constraint(equalTo: firstLabel.rightAnchor).isActive = true
        firstTextField.rightAnchor.constraint(equalTo: viewTop.rightAnchor).isActive = true
        firstTextField.widthAnchor.constraint(equalTo: viewTop.widthAnchor, multiplier: 1/2).isActive = true
        firstTextField.bottomAnchor.constraint(equalTo: middleTextField.topAnchor, constant: -10).isActive = true
    }
    
    func setupMiddleTextField() {
        middleTextField.leftAnchor.constraint(equalTo: middleLabel.rightAnchor, constant: 10).isActive = true
        middleTextField.rightAnchor.constraint(equalTo: viewTop.rightAnchor).isActive = true
        middleTextField.widthAnchor.constraint(equalTo: viewTop.widthAnchor, multiplier: 1/2).isActive = true
        middleTextField.bottomAnchor.constraint(equalTo: lastTextField.topAnchor, constant: -10).isActive = true
    }
    
    func setupLastTextField() {
        lastTextField.leftAnchor.constraint(equalTo: lastLabel.rightAnchor, constant: 10).isActive = true
        lastTextField.rightAnchor.constraint(equalTo: viewTop.rightAnchor).isActive = true
        lastTextField.widthAnchor.constraint(equalTo: viewTop.widthAnchor, multiplier: 1/2).isActive = true
        lastTextField.bottomAnchor.constraint(equalTo: viewTop.bottomAnchor, constant: -15).isActive = true
    }
}
