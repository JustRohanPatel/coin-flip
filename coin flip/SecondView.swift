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
                Image("table")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
                CustomText(text: "Coin Flip")
                    .foregroundColor(.black)
                    .font(.largeTitle).bold()
                    .position(x:380,y:10)
                
                VStack{
                    Spacer()
                    NavigationLink(destination: CoinView()) {
                        CustomTextbutton(text: "Go to Coin Flip")
                            .padding()
                            .background(Color.blue)
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
