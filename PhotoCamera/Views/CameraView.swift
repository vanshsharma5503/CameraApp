//
//  CameraView.swift
//  PhotoCamera
//
//  Created by Vansh Sharma on 30/01/25.
//

import SwiftUI

struct CameraView: View {
    @Environment(\.verticalSizeClass)var vertiSizeClass
    
    @State internal var VM = CameraViewModel()
    
    @Binding  var imageData: Data?
    @Binding  var showCamera: Bool
    let controlButtonWidth: CGFloat = 120
    let controlButtonHeight: CGFloat = 90
    var islandscape: Bool{vertiSizeClass == .compact}
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack{
                HStack{
                    cameraPreview
                    if islandscape{
                        verticalControlBar
                            .frame(width: controlButtonHeight)
                    }
                }
                if !islandscape{
                    horizontalControlBar
                        .frame(height:controlButtonHeight)
                }
            }
        }
    }
    private var cameraPreview: some View{
        GeometryReader{ geo in
            CameraPreview(cameraVM: $VM, frame: geo.frame(in: .global))
                .onAppear(){
                    VM.requestAcessAndSetup()
                }
        }
        .ignoresSafeArea()
    }
    


}

#Preview {
    CameraView(imageData: .constant(nil), showCamera: .constant(true))
}
