//
//  AeroProgressView.swift
//  AeroProgress
//
//  Created by Vishal_Malvi on 02/06/23.
//

import SwiftUI

struct AeroProgressView: View {
    
    @Binding var pathDistance: Int
    
    var body: some View {
        ZStack {
            HStack {
                Text("DEL")
                    .font(.title2.bold())
                Spacer()
                Text("NYK")
                    .font(.title2.bold())
            }
            .padding(.horizontal, 30)
            .offset(y: 20)
            aeroPath()
        }
    }
}

extension AeroProgressView {
    @ViewBuilder
    func aeroPath() -> some View {
        
        ZStack {
            Circle()
                .trim(from: 1/2, to: 1)
                .stroke(style: StrokeStyle(lineWidth: 2, dash: [8]))
                .frame(width: 300, height: 300)
            
            Image(systemName: "airplane")
                .font(.title)
                .fontWeight(.heavy)
                .rotationEffect(Angle.radians(4.8), anchor: .center)
                .offset(x: -150)
                .rotationEffect(.degrees(Double(pathDistance)))
            Rectangle()
                .frame(height: 1)
                .padding()
            Circle()
                .frame(width: 10, height: 10)
                .offset(x: -150)
            Circle()
                .frame(width: 10, height: 10)
                .offset(x: 150)
            
        }
    }
}

struct AeroProgressView_Previews: PreviewProvider {
    static var previews: some View {
        AeroProgressView(pathDistance: .constant(10))
    }
}
