//
//  CustomButton.swift
//  CustomButton
//
//  Created by Ashok Rawat on 31/08/22.
//


import UIKit

open class CustomButton: UIButton {
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required public init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        layer.cornerRadius = 5.0
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 2.0
    }
    
    open var color: UIColor = .red {
        didSet {
            backgroundColor = color
        }
    }
}
