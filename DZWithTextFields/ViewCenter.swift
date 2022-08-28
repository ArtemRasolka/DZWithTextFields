//
//  ViewCenter.swift
//  DZWithTextFields
//
//  Created by Admin on 29.08.22.
//

import Foundation
import UIKit

class ViewCenter {
    var labelAtView1: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Notes:"
        return label
    }()
    
    let viewCenter: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        view.layer.cornerRadius = 10
        return view
    }()
    
    func setupLabelAtView1() {
        labelAtView1.leftAnchor.constraint(equalTo: viewCenter.leftAnchor, constant: 5).isActive = true
        labelAtView1.topAnchor.constraint(equalTo: viewCenter.topAnchor, constant: 10).isActive = true
    }
}
