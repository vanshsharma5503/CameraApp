//
//  ControlButtonView.swift
//  PhotoCamera
//
//  Created by Vansh Sharma on 30/01/25.
//

import SwiftUI

struct ControlButtonView: View {
    let label: String
    let action: () -> Void
    var body: some View {
        Button{
            action()
        }label: {
            Text(label)
                .tint(.white)
                .font(.title3)
                .fontWeight(.semibold)
        }
    }
}

#Preview {
    ControlButtonView(label: "cancel", action: {})
}
