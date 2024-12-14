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
                Image("p") //background image
                    .resizable() //modifiers
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                    CustomText1(text: "Coin Flip") //title
                        .foregroundColor(.black)//modifiers
                        .font(.largeTitle).bold()
                        .position(x:525,y:390)
                VStack{
                    Spacer()
                    NavigationLink(destination: SecondView()) { //what teleports you to second view
                        CustomTextbutton(text: "Enter Casino")// what makes up the button
                            .padding() //modifier
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
struct CustomText: View { //makes the custom text for the title and text on coin view
    let text: String
    var body: some View {
        Text(text).font(Font.custom("Marker Felt", size: 36))
            .foregroundColor(.black)
    }
}
struct CustomText1: View {//makes the other custom text 
    let text: String
    var body: some View {
        Text(text).font(Font.custom("Marker Felt", size: 66))
            .foregroundColor(.red)
    }
}
struct CustomTextbutton: View {//makes the custom text for the buttons
    let text: String
    var body: some View {
        Text(text).font(Font.custom("Marker Felt", size: 36))
            .foregroundColor(.yellow)
    }
}
#Preview {
    ContentView()
}
