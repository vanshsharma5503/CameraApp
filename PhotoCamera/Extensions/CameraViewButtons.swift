//
//  CameraViewButtons.swift
//  PhotoCamera
//
//  Created by Vansh Sharma on 30/01/25.
//
import SwiftUI
extension CameraView {
    var usePhotoButton: some View {
        ControlButtonView(label: nil, imageName: "checkmark") {
            imageData = VM.photoData
            showCamera = false
        }
    }

    var retakeButton: some View {
        ControlButtonView(label: nil, imageName: "xmark") {
            VM.retakePhoto()
        }
    }

    var cancelButton: some View {
        ControlButtonView(label: "Cancel", imageName: nil) {
            showCamera = false
        }
    }

    var photoCaptureButton: some View {
        Button {
            VM.takePhoto()
        } label: {
            ZStack {
                Circle()
                    .fill(.white)
                    .frame(width: 65)
                Circle()
                    .stroke(.white, lineWidth: 3)
                    .frame(width: 75)
            }
        }
    }
}

