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
        NavigationView { // make it able to see this view
            VStack {
                CustomText(text: "Coin Flip") // add texts
                    .font(.largeTitle) //changes text properties
                    .fontWeight(.bold)
                    .padding()
                Image(imageName)// add coin
                    .resizable()
                    .scaledToFit()//properties
                    .frame(width: 200, height: 200)
                    .padding()
                    .rotation3DEffect(//animation
                        Angle(degrees: rotationAngle),
                        axis: (x: 0, y: 1, z: 0))
                    .animation(.easeInOut(duration: 1.2), value: rotationAngle)//pin to point
                CustomText(text: result) // show who wins
                    .font(.title)
                    .padding()
                HStack {
                    Button(action: flipCoin) { //flip coins
                        CustomText(text: "Flip Coin")
                            .padding()
                            .background(Color.blue)//modifiers
                            .foregroundColor(.white)
                            .cornerRadius(14)
                            .frame(width: 300, height: 100)
                    }
                }
                .padding()
            }
        }
    }
    func flipCoin() { //what actullly make the coin works
        withAnimation {
              rotationAngle += 1080 // Two full rotations
           }
        if Bool.random() { //if head then makes it say head and show heads
            result = "Head"
            imageName = "head"
        } else {
            result = "Tails" //if tails then makes it say tails and show tails
            imageName = "tails"
        }
    }
}

#Preview {
    CoinView()
}
