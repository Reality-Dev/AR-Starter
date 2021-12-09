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
        
        //Create the Entity from scratch.
        let myEntity = Entity()
        
        //Create the inputs for the ModelComponent
        let mesh = MeshResource.generateText("Hello World")
        let material = SimpleMaterial(color: .green, isMetallic: true)
        //Create the Model Component
        let myModelComponent = ModelComponent(mesh: mesh, materials: [material])
        //Set the Model Component. This is one way to set components one at a time.
        myEntity.components[ModelComponent.self] = myModelComponent
        
        //Create the inputs for the CollisionComponent
        let size = myEntity.visualBounds(recursive: true, relativeTo: nil, excludeInactive: false).extents
        let shape = ShapeResource.generateBox(size: size)
        //Create the CollisionComponent
        let myCollisionComponent = CollisionComponent(shapes: [shape])
        //Set the CollisionComponent This is another way to set components one at a time.
        myEntity.components.set(myCollisionComponent)
        
        //This is an alternative way to set components, more than one at a time.
//        myEntity.components.set([myModelComponent, myCollisionComponent])
        

        
    }
    
    func makeModelEnt(){
        //This creates a ModelEntity, which automatically comes with certain components.
        //ModelEntity has other initializers that you can use, but I am using the (mesh:, materials:) initializer.
        let mesh = MeshResource.generateText("Hello World")
        let material = SimpleMaterial(color: .green, isMetallic: true)
        let myModelEntity = ModelEntity(mesh: mesh, materials: [material])
        
        //To make an entity show up in our scene, we must attach it to an AnchorEntity and add that AnchorEntity to our scene.
        let myAnchorEntity = AnchorEntity() //This anchor is at the world origin.
        self.scene.addAnchor(myAnchorEntity)
        myAnchorEntity.addChild(myModelEntity)
        
    }
    
    
    //required function.
    @objc required dynamic init?(coder decoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

