//
//  ARAccessControl.swift
//  ARSwiftAccessControl
//
//  Created by Ashok Rawat on 30/08/22.
//

import Foundation
import UIKit

class ARAccessControl {
    // private variable
    private var privateVariable = "private variable"
    // fileprivate variable
    fileprivate var filePrivateVariable = "file private"
    
    // private method
    private func privateMethod() {}
    // file private method
    fileprivate func filePrivateMethod() {}
    
    // internal variable (default)
    var internalVariable = "internal variable"
    
    func internalMethod() {}
}


extension ARAccessControl {
    func checkVariableAccess() {
        print(privateVariable)
        print(filePrivateVariable)
        print(internalVariable)
    }
}
// Subclass of ARAccessControl in same source file where private and fileprivate variable define
class ARSubClassARAccessControl: ARAccessControl {

    //MARK: - Override method from superclass
    override func filePrivateMethod() {
        print("file-Private Method")
    }
    
//    override func privateMethod() {
//     //   print("private Method") // compile time error "Method does not override any method from its superclass"
//    }
    
    
    //MARK: - private/file-private variable
    
    func printPrivateVariable() {
//        print(self.privateVariable) // compile time error "privateVariable' is inaccessible due to 'private' protection level"
    }

    func printFilePrivateVariable() {
        print(self.filePrivateVariable)
    }
}

