//
//  ViewController.swift
//  DZWithTextFields
//
//  Created by Admin on 26.08.22.
//

import UIKit

class ViewController: UIViewController, ViewTopDelegate {
    
    var viewTop2 = ViewTop()
    var viewCenter2 = ViewCenter()
    
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
        
        view.addSubview(viewCenter2.viewCenter)
        view.addSubview(viewTop2.viewTop)
        viewCenter2.viewCenter.addSubview(viewCenter2.labelAtView1)
        viewTop2.viewTop.addSubview(viewTop2.image1)
        viewTop2.viewTop.addSubview(viewTop2.firstTextField)
        viewTop2.viewTop.addSubview(viewTop2.middleTextField)
        viewTop2.viewTop.addSubview(viewTop2.lastTextField)
        viewTop2.viewTop.addSubview(viewTop2.firstLabel)
        viewTop2.viewTop.addSubview(viewTop2.middleLabel)
        viewTop2.viewTop.addSubview(viewTop2.lastLabel)
        
        view.addSubview(saveButton)
        view.addSubview(cancelButton)
        view.addSubview(clearButton)
        
        viewCenter2.setupLabelAtView1()
        viewTop2.setupImage1()
        viewTop2.setupFirstTextField()
        viewTop2.setupMiddleTextField()
        viewTop2.setupLastTextField()
        setupViewCenter()
        setupViewTop()
        setupSaveButton()
        setupCancelButton()
        setupClearButton()
        viewTop2.setupFirstLabel()
        viewTop2.setupMiddleLabel()
        viewTop2.setupLastLabel()
    }
    
    func setupViewTop() {
        viewTop2.viewTop.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        viewTop2.viewTop.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        viewTop2.viewTop.bottomAnchor.constraint(equalTo: viewCenter2.viewCenter.topAnchor, constant: 5).isActive = true
        viewTop2.viewTop.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
    }
    
    func setupViewCenter() {
        viewCenter2.viewCenter.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        viewCenter2.viewCenter.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        viewCenter2.viewCenter.topAnchor.constraint(equalTo: viewTop2.image1.bottomAnchor, constant: 10).isActive = true
        viewCenter2.viewCenter.bottomAnchor.constraint(equalTo: saveButton.topAnchor, constant: 10).isActive = true
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
        
        fillThelabelWith(info: (viewTop2.firstTextField.text ?? "Error") + (viewTop2.middleTextField.text ?? "Error") + (viewTop2.lastTextField.text ?? "Error"))
        
        viewTop2.firstTextField.text = ""
        viewTop2.middleTextField.text = ""
        viewTop2.lastTextField.text = ""
        viewTop2.delegate = self
        
    }
    
    @objc func actionCancelButton(sender: UIButton) {
        print("Cancel button tapped!")
        
    }
    
    @objc func actionClearButton(sender: UIButton) {
        print("Clear button tapped!")
        viewCenter2.labelAtView1.text = "Notes:"
    }
    
    func fillThelabelWith(info: String) {
        viewCenter2.labelAtView1.text = info
        
    }
    
}
