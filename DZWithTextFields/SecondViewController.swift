//
//  SecondViewController.swift
//  DZWithTextFields
//
//  Created by Admin on 27.08.22.
//

import UIKit

class SecondViewController: UIViewController, UITextViewDelegate {
    var textView: UITextView! 

    override func viewDidLoad() {
        super.viewDidLoad()
        textView.delegate = self
     
    }


}
