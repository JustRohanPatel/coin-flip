//
//  CoinView.swift
//  coin flip
//
//  Created by rohan patel on 12/2/24.
//

import SwiftUI

struct CoinView: View {
    @State private var result: String = "Heads or Tails?"
    @State private var imageName: String = "coin"
    @State private var rotation = 0.0
    @State private var rotationAngle: Double = 0
    
    var body: some View {
        NavigationView {
            VStack {
                CustomText(text: "Coin Flip")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .padding()
                    .rotation3DEffect(
                        Angle(degrees: rotationAngle),
                        axis: (x: 0, y: 1, z: 0))
                    .animation(.easeInOut(duration: 1.2), value: rotationAngle)
                
                CustomText(text: result)
                    .font(.title)
                    .padding()
                HStack {
                    Button(action: flipCoin) {
                        CustomText(text: "Flip Coin")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(14)
                            .frame(width: 300, height: 100)
                    }
                }
                .padding()
            }
        }
    }
    func flipCoin() {
        withAnimation {
              rotationAngle += 1080 // Two full rotations
           }
        if Bool.random() {
            result = "Head"
            imageName = "head"
        } else {
            result = "Tails"
            imageName = "tails"
        }
    }
}

#Preview {
    CoinView()
}
