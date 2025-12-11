//
//  RoomDetailView.swift
//  iOSMastery
//
//  Created by Kaleb Stephens on 12/11/25.
//

import SwiftUI

struct RoomDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    var roomName: String
    
    var body: some View {
        ZStack {
            
            // MAIN BACKGROUND
            Color(red: 186/255, green: 144/255, blue: 102/255)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                
                // TOP BAR
                ZStack {
                    Color(red: 159/255, green: 119/255, blue: 79/255)
                        .ignoresSafeArea(edges: .top)
                    
                    Text(roomName)
                        .font(.system(size: 40))
                        .foregroundColor(.black)
                }
                .frame(height: 70)
                
                
                // CENTER CONTENT
                VStack(spacing: 50) {
                    
                    Spacer()
                    
                    Text("Welcome\nto \(roomName)")
                        .font(.system(size: 40))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                    
                    Button("Leave") {
                        dismiss()   // ← Takes you back to RoomsView
                    }
                    .font(.system(size: 26))
                    .foregroundColor(.black)
                    .frame(width: 180, height: 55)
                    .background(Color(red: 232/255, green: 210/255, blue: 149/255))
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color.black, lineWidth: 1)
                    )
                    
                    Spacer()
                }
                
                
                // BOTTOM BAR
                ZStack {
                    Color(red: 159/255, green: 119/255, blue: 79/255)
                        .ignoresSafeArea(edges: .bottom)
                    
                    HStack {
                        Image("CheckInLogo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .padding(.leading, 20)
                        
                        Spacer()
                        
                        Text("Help")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                            .padding(.trailing, 20)
                    }
                }
                .frame(height: 70)
            }
        }
    }
}

#Preview {
    RoomDetailView(roomName: "Room 2")
}
