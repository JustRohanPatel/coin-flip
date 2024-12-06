//
//  ContentView.swift
//  coin flip
//
//  Created by rohan patel on 11/20/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("p")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
                    CustomText1(text: "Coin Flip")
                        .foregroundColor(.black)
                        .font(.largeTitle).bold()
                        .position(x:380,y:10)
                
                VStack{
                    Spacer()
                    NavigationLink(destination: SecondView()) {
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
struct CustomText: View {
    let text: String
    var body: some View {
        Text(text).font(Font.custom("Marker Felt", size: 36))
            .foregroundColor(.black)
    }
}
struct CustomText1: View {
    let text: String
    var body: some View {
        Text(text).font(Font.custom("Marker Felt", size: 36))
            .foregroundColor(.indigo)
    }
}
struct CustomTextbutton: View {
    let text: String
    var body: some View {
        Text(text).font(Font.custom("Marker Felt", size: 36))
            .foregroundColor(.yellow)
    }
}
#Preview {
    ContentView()
}
