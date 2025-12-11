//
//  ContentView.swift
//  iOSMastery
//
//  Created by Kaleb Stephens on 12/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // MAIN BACKGROUND (Light brown - BA9066)
                Color(red: 186/255, green: 144/255, blue: 102/255)
                    .ignoresSafeArea()
                
                VStack(spacing: 0) {
                    
                    // TOP BAR (Dark brown - 9F774F)
                    Color(red: 159/255, green: 119/255, blue: 79/255)
                        .frame(height: 130)
                    
                    Spacer()
                    
                    // BOTTOM BAR (Dark brown - 9F774F)
                    ZStack {
                        Color(red: 159/255, green: 119/255, blue: 79/255)
                        
                        HStack {
                            Image("CheckInLogo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 120)
                                .padding(.leading, 20)
                            
                            Spacer()
                            
                            Text("Help")
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                                .padding(.trailing, 20)
                        }
                    }
                    .frame(height: 120)
                }
                .ignoresSafeArea()
                
                
                // CENTERED CONTENT
                VStack(spacing: 40) {
                    
                    Text("Welcome to\nCheck-In-Monitor")
                        .font(.system(size: 34))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                    
                    NavigationLink(destination: RoomsView()) {
                        Text("Enter")
                            .font(.system(size: 26))
                            .foregroundColor(.black)
                            .frame(width: 180, height: 55)
                            .background(
                                Color(red: 232/255, green: 210/255, blue: 149/255) // E8D295
                            )
                            .overlay(
                                RoundedRectangle(cornerRadius: 4)
                                    .stroke(Color.black, lineWidth: 1)
                            )
                    }
                }
                .padding(.top, 130)
                .padding(.bottom, 120)
            }
        }
    }
}

#Preview {
    ContentView()
}
