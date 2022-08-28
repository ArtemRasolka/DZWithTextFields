//
//  ViewController.swift
//  DZWithTextFields
//
//  Created by Admin on 26.08.22.
//

import UIKit

class ViewController: UIViewController, ViewTopDelegate {
    
    var labelAtView1: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Notes:"
        return label
    }()
    
    var textFields = ViewTop()
    
    let viewCenter: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        view.layer.cornerRadius = 10
        return view
    }()
    
    let viewBottom: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        view.layer.cornerRadius = 10
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
        
        view.addSubview(viewCenter)
        view.addSubview(textFields.viewTop)
        viewCenter.addSubview(labelAtView1)
        textFields.viewTop.addSubview(textFields.image1)
        textFields.viewTop.addSubview(textFields.firstTextField)
        textFields.viewTop.addSubview(textFields.middleTextField)
        textFields.viewTop.addSubview(textFields.lastTextField)
        textFields.viewTop.addSubview(textFields.firstLabel)
        textFields.viewTop.addSubview(textFields.middleLabel)
        textFields.viewTop.addSubview(textFields.lastLabel)
        
        view.addSubview(saveButton)
        view.addSubview(cancelButton)
        view.addSubview(clearButton)
        
        setupLabelAtView1()
        textFields.setupImage1()
        textFields.setupFirstTextField()
        textFields.setupMiddleTextField()
        textFields.setupLastTextField()
        setupViewCenter()
        setupViewTop()
        setupSaveButton()
        setupCancelButton()
        setupClearButton()
        textFields.setupFirstLabel()
        textFields.setupMiddleLabel()
        textFields.setupLastLabel()
    }
    func setupLabelAtView1() {
        labelAtView1.leftAnchor.constraint(equalTo: viewCenter.leftAnchor, constant: 5).isActive = true
        labelAtView1.topAnchor.constraint(equalTo: viewCenter.topAnchor, constant: 10).isActive = true
    }
    
    func setupViewTop() {
        textFields.viewTop.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        textFields.viewTop.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        textFields.viewTop.bottomAnchor.constraint(equalTo: viewCenter.topAnchor, constant: 5).isActive = true
        textFields.viewTop.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
    }
    
    func setupViewCenter() {
        viewCenter.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        viewCenter.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        viewCenter.topAnchor.constraint(equalTo: textFields.image1.bottomAnchor, constant: 10).isActive = true
        viewCenter.bottomAnchor.constraint(equalTo: saveButton.topAnchor, constant: 10).isActive = true
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
    
    @objc func actionSaveButton(sender: UIButton) {
        print("Save button tapped!")
        
        fillThelabelWith(info: (textFields.firstTextField.text ?? "Error") + (textFields.middleTextField.text ?? "Error") + (textFields.lastTextField.text ?? "Error"))
        
        textFields.firstTextField.text = ""
        textFields.middleTextField.text = ""
        textFields.lastTextField.text = ""
        textFields.delegate = self
        
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
