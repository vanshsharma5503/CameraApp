//
//  CameraViewVerticalControlBar.swift
//  PhotoCamera
//
//  Created by Vansh Sharma on 30/01/25.
//

import SwiftUI
extension CameraView{
    @ViewBuilder var verticalControlBar:some View{
         if VM.hasPhoto{
             verticalControlBarPostPhoto
         }else{
             verticalControlBarPrePhoto
         }
    }
    var verticalControlBarPrePhoto:some View{
        VStack{
            Spacer()
                .frame(height: controlButtonWidth)
            Spacer()
            photoCaptureButton
            Spacer()
            cancelButton
                .frame(height: controlButtonWidth)
        }
    }
    var verticalControlBarPostPhoto:some View{
        VStack{
            usePhotoButton
                .frame(height: controlButtonWidth)
            Spacer()
            retakeButton
                .frame(height: controlButtonWidth)
        }
    }
}
