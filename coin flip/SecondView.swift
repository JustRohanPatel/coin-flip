//
//  SecondView.swift
//  coin flip
//
//  Created by rohan patel on 12/5/24.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("table") //show backgrounds
                    .resizable()
                    .aspectRatio(contentMode: .fill) //modifiers
                    .edgesIgnoringSafeArea(.all)
                
                CustomText1(text: "Coin Flip") //makes background
                    .foregroundColor(.black) //modifiers
                    .font(.largeTitle).bold()
                    .position(x:390,y:180)
                
                VStack{
                    Spacer()
                    NavigationLink(destination: CoinView()) {//what teleports you to CoinView
                        CustomTextbutton(text: "Go to Coin Flip") // the button that teleport you to next view
                            .padding()
                            .background(Color.blue) // modifier
                            .foregroundColor(.white)
                            .cornerRadius(14)
                            .frame(width: 300, height: 100)
                    }
                }
            }
        }
    }
}
#Preview {
    SecondView()
}
