//
//  Views.swift
//  PhotoCamera
//
//  Created by Vansh Sharma on 30/01/25.
//

import Foundation
import SwiftUI

extension View {
    func fullScreenCamera(isPresented:Binding<Bool>, imageData: Binding<Data?>)-> some View{
        self
            .fullScreenCover(isPresented: isPresented, content:{
                CameraView(imageData: imageData, showCamera: isPresented)
            } )
    }
}
