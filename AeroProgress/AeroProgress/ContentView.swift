//
//  ContentView.swift
//  AeroProgress
//
//  Created by Vishal_Malvi on 02/06/23.
//

import SwiftUI

struct ContentView: View {
    
    let bgColors = [Color("bgColor1"), Color("bgColor2")]
    
    @State private var pathDistance = 10
    
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: bgColors), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                AeroProgressView(pathDistance: $pathDistance)
                    .foregroundColor(.white)
                
                Button {
                    withAnimation(Animation.easeInOut(duration: 5).delay(2)) {
                        pathDistance = 160
                    }
                } label: {
                    Label("Start", systemImage: "airplane")
                        .font(.title2.bold())
                        .foregroundColor(.white)
                }
                .buttonStyle(GrowingButton())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
