//
//  ARView.swift
//  AR Starter
//
//  Created by Grant Jarvis on 2/8/21.
//

import ARKit
import RealityKit

class ARSUIView: ARView {
    
    required init(frame frameRect: CGRect) {
        super.init(frame: frameRect)
        
    }
    
    
    
    //required function.
    @objc required dynamic init?(coder decoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

