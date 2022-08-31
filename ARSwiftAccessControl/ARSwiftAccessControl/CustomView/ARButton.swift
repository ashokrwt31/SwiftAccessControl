//
//  ARButton.swift
//  ARSwiftAccessControl
//
//  Created by Ashok Rawat on 31/08/22.
//

import UIKit
import CustomButton

class ARButton: CustomButton {
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required public init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
        super.init(coder: coder)
    }
    
    override var color: UIColor {
        didSet {
            self.backgroundColor = color
        }
    }
}
