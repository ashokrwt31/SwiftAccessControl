//
//  ARSubclass.swift
//  ARSwiftAccessControl
//
//  Created by Ashok Rawat on 30/08/22.
//

import Foundation

class ARSubclass: ARAccessControl {
    
    func printFileVariable() {
        
        // compile time error as file-private entities are not accessible outside of decleared source file.
//        self.filePrivateMethod()
//        print(self.filePrivateVariable)
    }
}
