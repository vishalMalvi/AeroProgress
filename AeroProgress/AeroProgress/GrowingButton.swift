//
//  GrowingButton.swift
//  AeroProgress
//
//  Created by Vishal_Malvi on 02/06/23.
//

import SwiftUI

struct GrowingButton: ButtonStyle {
    let btnColors: [Color] = [Color("btnColor1"), Color("btnColor2")]
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background( LinearGradient(gradient: Gradient(colors: btnColors), startPoint: .topLeading, endPoint: .bottomTrailing))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}
