//
//  ContentView.swift
//  AR Starter
//
//  Created by Grant Jarvis on 2/8/21.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    var body: some View {
        ZStack {
            ARViewContainer().edgesIgnoringSafeArea(.all)
            //UIContent goes here.
        }
    }
}




struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        return ARSUIView(frame: .zero)
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
}



#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
