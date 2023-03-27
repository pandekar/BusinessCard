//
//  ContentView.swift
//  BusinessCard
//
//  Created by Pande Adhistanaya on 26/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.15, green: 0.68, blue: 0.38)
                .ignoresSafeArea()
            VStack {
                Image("Pande pas foto")
                    .resizable()
                    .aspectRatio(0.7, contentMode: .fill)
                    .frame(width:300, height:300)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Pande Putu")
                    .font(Font.custom("Inconsolata-VariableFont_wdth,wght", size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                Divider()
                
                ZStack {
                    Color(.white)
                        .frame(width: .infinity, height: 50)
                        .cornerRadius(60)
                    HStack {
                        Image(systemName: "phone.fill")
                        Text("+62 823 3737 3020")
                            .bold()
                    }
                }
                .padding()
                
                InfoBarView(text: "0823 3737 3020", imageName: "phone.fill")
                InfoBarView(text: "pandepwa@gmail.com", imageName: "envelope")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


