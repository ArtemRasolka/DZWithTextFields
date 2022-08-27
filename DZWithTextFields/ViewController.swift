//
//  ViewController.swift
//  DZWithTextFields
//
//  Created by Admin on 26.08.22.
//

import UIKit

protocol Delegate {
    func fillThelabelWith(info: String)
}

class ViewController: UIViewController, Delegate  {
    
    var labelAtView1: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Notes:"
        return label
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
    
    let image1: UIImageView = {
        let image = UIImageView(image: UIImage(named: "apple"))
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let firstTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Enter First Name"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    let middleTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Enter Middle Name"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    let lastTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Enter Last Name"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    let view1: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        view.layer.cornerRadius = 10
        return view
    }()
    
    let view2: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let saveButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Save", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.addTarget(self, action: #selector(actionSaveButton(sender:)), for: .touchUpInside)
        return button
    }()
    
    let cancelButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Cancel", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.addTarget(self, action: #selector(actionCancelButton(sender:)), for: .touchUpInside)
        return button
    }()
    
    let clearButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Clear", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.addTarget(self, action: #selector(actionClearButton(sender:)), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(view1)
        view.addSubview(view2)
        view1.addSubview(labelAtView1)
        view2.addSubview(image1)
        view2.addSubview(firstTextField)
        view2.addSubview(middleTextField)
        view2.addSubview(lastTextField)
        view2.addSubview(firstLabel)
        view2.addSubview(middleLabel)
        view2.addSubview(lastLabel)
        view.addSubview(saveButton)
        view.addSubview(cancelButton)
        view.addSubview(clearButton)
        
        setupLabelAtView1()
        setupImage1()
        setupFirstTextField()
        setupMiddleTextField()
        setupLastTextField()
        setupView1()
        setupView2()
        setupSaveButton()
        setupCancelButton()
        setupClearButton()
        setupFirstLabel()
        setupMiddleLabel()
        setupLastLabel()
    }
    func setupLabelAtView1() {
        labelAtView1.leftAnchor.constraint(equalTo: view1.leftAnchor, constant: 5).isActive = true
        labelAtView1.topAnchor.constraint(equalTo: view1.topAnchor, constant: 10).isActive = true
    }
    
    func setupImage1() {
        image1.leftAnchor.constraint(equalTo: view2.leftAnchor).isActive = true
        image1.heightAnchor.constraint(equalToConstant: 120).isActive = true
        image1.topAnchor.constraint(equalTo: view2.topAnchor, constant: 50).isActive = true
    }
    
    func setupFirstTextField() {
        firstTextField.leftAnchor.constraint(equalTo: firstLabel.rightAnchor).isActive = true
        firstTextField.rightAnchor.constraint(equalTo: view2.rightAnchor).isActive = true
        firstTextField.widthAnchor.constraint(equalTo: view2.widthAnchor, multiplier: 1/2).isActive = true
        firstTextField.bottomAnchor.constraint(equalTo: middleTextField.topAnchor, constant: -10).isActive = true
    }
    
    func setupMiddleTextField() {
        middleTextField.leftAnchor.constraint(equalTo: middleLabel.rightAnchor, constant: 10).isActive = true
        middleTextField.rightAnchor.constraint(equalTo: view2.rightAnchor).isActive = true
        middleTextField.widthAnchor.constraint(equalTo: view2.widthAnchor, multiplier: 1/2).isActive = true
        middleTextField.bottomAnchor.constraint(equalTo: lastTextField.topAnchor, constant: -10).isActive = true
    }
    
    func setupLastTextField() {
        lastTextField.leftAnchor.constraint(equalTo: lastLabel.rightAnchor, constant: 10).isActive = true
        lastTextField.rightAnchor.constraint(equalTo: view2.rightAnchor).isActive = true
        lastTextField.widthAnchor.constraint(equalTo: view2.widthAnchor, multiplier: 1/2).isActive = true
        lastTextField.bottomAnchor.constraint(equalTo: view2.bottomAnchor, constant: -15).isActive = true
    }
    
    func setupView1() {
        view1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        view1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        view1.topAnchor.constraint(equalTo: image1.bottomAnchor, constant: 10).isActive = true
        view1.bottomAnchor.constraint(equalTo: saveButton.topAnchor, constant: 10).isActive = true
    }
    
    func setupView2() {
        view2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        view2.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        view2.bottomAnchor.constraint(equalTo: view1.topAnchor, constant: 5).isActive = true
        view2.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
    }
    
    func setupSaveButton() {
        saveButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        saveButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4).isActive = true
        saveButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        saveButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 10).isActive = true
    }
    
    func setupCancelButton() {
        cancelButton.leftAnchor.constraint(equalTo: saveButton.rightAnchor, constant: 42).isActive = true
        cancelButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4).isActive = true
        cancelButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        cancelButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 10).isActive = true
    }
    
    func setupClearButton() {
        clearButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        clearButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4).isActive = true
        clearButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        clearButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 10).isActive = true
    }
    
    func setupFirstLabel() {
        firstLabel.leftAnchor.constraint(equalTo: image1.rightAnchor, constant: 10).isActive = true
        firstLabel.rightAnchor.constraint(equalTo: firstTextField.leftAnchor, constant: -5).isActive = true
        firstLabel.widthAnchor.constraint(equalTo: view2.widthAnchor, multiplier: 1/7).isActive = true
        firstLabel.bottomAnchor.constraint(equalTo: middleLabel.topAnchor, constant: -20).isActive = true
        firstLabel.topAnchor.constraint(equalTo: view2.topAnchor, constant: 50).isActive = true
    }
    
    func setupMiddleLabel() {
        middleLabel.leftAnchor.constraint(equalTo: image1.rightAnchor, constant: 10).isActive = true
        middleLabel.rightAnchor.constraint(equalTo: middleTextField.leftAnchor, constant: -5).isActive = true
        middleLabel.widthAnchor.constraint(equalTo: view2.widthAnchor, multiplier: 1/7).isActive = true
        middleLabel.bottomAnchor.constraint(equalTo: lastLabel.topAnchor).isActive = true
        middleLabel.topAnchor.constraint(equalTo: firstTextField.bottomAnchor, constant: 20).isActive = true
    }
    
    func setupLastLabel() {
        lastLabel.leftAnchor.constraint(equalTo: image1.rightAnchor, constant: 10).isActive = true
        lastLabel.rightAnchor.constraint(equalTo: lastTextField.leftAnchor, constant: -5).isActive = true
        lastLabel.widthAnchor.constraint(equalTo: view2.widthAnchor, multiplier: 1/7).isActive = true
        lastLabel.bottomAnchor.constraint(equalTo: view2.bottomAnchor).isActive = true
        lastLabel.topAnchor.constraint(equalTo: middleTextField.bottomAnchor, constant: -5).isActive = true
    }
    
    @objc func actionSaveButton(sender: UIButton) {
        print("Save button tapped!")
        
        fillThelabelWith(info: (firstTextField.text ?? "Error!") + (middleTextField.text ?? "Error!") + (lastTextField.text ?? "Error!"))
        
        firstTextField.text = ""
        middleTextField.text = ""
        lastTextField.text = ""
        
    }
    
    @objc func actionCancelButton(sender: UIButton) {
        print("Cancel button tapped!")
        
    }
    
    @objc func actionClearButton(sender: UIButton) {
        print("Clear button tapped!")
        labelAtView1.text = "Notes:"
    }
    
    func fillThelabelWith(info: String) {
        labelAtView1.text = info
    }
    
}

