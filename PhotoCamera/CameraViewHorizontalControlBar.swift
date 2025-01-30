//
//  CameraViewHorizontalControlBar.swift
//  PhotoCamera
//
//  Created by Vansh Sharma on 30/01/25.
//

import SwiftUI

extension CameraView{
    @ViewBuilder var horizontalControlBar: some View{
         if VM.hasPhoto{
             horizontalControlBarPostPhoto
         }else{
             horizontalControlBarPrePhoto
         }
         
    }
     var horizontalControlBarPrePhoto: some View{
        HStack{
            cancelButton
                .frame(width: controlButtonWidth)
            Spacer()
            photoCaptureButton
            Spacer()
            Spacer()
                .frame(width: controlButtonWidth)
        }
    }
     var horizontalControlBarPostPhoto: some View{
        HStack{
            retakeButton
                .frame(width: controlButtonWidth)
            Spacer()
            usePhotoButton
                .frame(width: controlButtonWidth)
        }
    }
}
