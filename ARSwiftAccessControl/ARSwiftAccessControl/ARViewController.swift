//
//  ARViewController.swift
//  ARSwiftAccessControl
//
//  Created by Ashok Rawat on 30/08/22.
//

import Foundation
import UIKit
 
class ARViewController: UIViewController {
    @IBOutlet private weak var customButton: ARButton!
    @IBOutlet private weak var infoLabel: UILabel!
    
    // MARK: - View Controller view did load
    override func viewDidLoad() {
        super.viewDidLoad()
        checkAccessControl()
    }
    
    func checkAccessControl() {
        let accessControl = ARAccessControl()
        accessControl.checkVariableAccess()
        
        let obj = ARSubClassARAccessControl()
        obj.filePrivateMethod()
        obj.printFilePrivateVariable()
    }
    
    // Custom button action for update button background color
    @IBAction func customButtonAction(_ sender: Any) {
        let buttonColor = randomColor()
        let attributes = [[NSAttributedString.Key.foregroundColor: buttonColor]]
        infoLabel.attributedText = "Button color is \(buttonColor.accessibilityName)".highlightText(buttonColor.accessibilityName, attributes)
        customButton.color = buttonColor
    }
    
    // randoom color generate
    private func randomColor() -> UIColor {
        let random = {CGFloat(arc4random_uniform(255)) / 255.0}
        return UIColor(red: random(), green: random(), blue: random(), alpha: 1)
    }
}


// hightlight text based on random color generate
extension String {
    func highlightText(_ text: String, _ attributes: [[NSAttributedString.Key: Any]]) -> NSMutableAttributedString {
        let range = (self as NSString).range(of: text)
        let updatedString = NSMutableAttributedString(string: self)
        
        for attribute in attributes {
            updatedString.addAttributes(attribute, range: range)
        }
        return updatedString
    }
}

