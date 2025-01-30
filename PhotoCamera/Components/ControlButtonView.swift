//
//  ControlButtonView.swift
//  PhotoCamera
//
//  Created by Vansh Sharma on 30/01/25.
//

import SwiftUI

struct ControlButtonView: View {
    let label: String?
    let imageName: String?
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            if let imageName = imageName {
                Image(systemName: imageName)
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(Circle().fill(Color.blue))
            } else if let label = label {
                Text(label)
                    .tint(.white)
                    .font(.title3)
                    .fontWeight(.semibold)
            }
        }
    }
}

#Preview {
    VStack {
        ControlButtonView(label: "Cancel", imageName: nil, action: {})
        ControlButtonView(label: nil, imageName: "checkmark", action: {})
    }
}
