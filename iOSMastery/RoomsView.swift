//
//  RoomsView.swift
//  iOSMastery
//
//  Created by Kaleb Stephens on 12/11/25.
//

import SwiftUI

struct RoomsView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private var showDetails1 = false
    @State private var showDetails2 = false
    @State private var showDetails3 = false
    
    var body: some View {
        
        ZStack {
            Color(red: 159/255, green: 119/255, blue: 79/255)
                .ignoresSafeArea(edges: .top)
            
            VStack(spacing: 0) {
                
                // =============================
                // TOP BAR (DARK)
                // =============================
                ZStack {
                    Color(red: 159/255, green: 119/255, blue: 79/255)
                        .ignoresSafeArea(edges: .top)
                    
                    HStack {
                        Button(action: {
                            dismiss()  // back to Home
                        }) {
                            
                        }
                        
                        Spacer()
                    }
                    
                    Text("Rooms")
                        .font(.system(size: 40))
                        .foregroundColor(.black)
                        .padding(.top, 35)
                }
                .frame(height: 130)
                
                
                // =============================
                // LIGHT AREA (all rooms)
                // =============================
                Color(red: 186/255, green: 144/255, blue: 102/255)
                    .overlay(
                        VStack(spacing: 35) {
                            
                            Spacer().frame(height: 40)
                            
                            roomRow(
                                roomName: "Room 1",
                                status: "Closed",
                                capacityInfo: "20 users\nMax Capacity",
                                showDetails: $showDetails1
                            )
                            
                            roomRow(
                                roomName: "Room 2",
                                status: "Join",
                                capacityInfo: "12 users\n12/32 Capacity",
                                showDetails: $showDetails2
                            )
                            
                            roomRow(
                                roomName: "Room 3",
                                status: "Join",
                                capacityInfo: "8 users\n8/20 Capacity",
                                showDetails: $showDetails3
                            )
                            
                            Spacer()
                        }
                    )
                
                
                // =============================
                // BOTTOM BAR (DARK)
                // =============================
                ZStack {
                    Color(red: 159/255, green: 119/255, blue: 79/255)
                        .ignoresSafeArea(edges: .bottom)
                    
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
        }
    }
    
    
    // ===========================================================
    // ROOM ROW — CLICKABLE JOIN
    // ===========================================================
    func roomRow(roomName: String, status: String, capacityInfo: String, showDetails: Binding<Bool>) -> some View {
        
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                
                // ROOM LABEL
                Text(roomName)
                    .font(.system(size: 28))
                    .padding(15)
                    .background(Color(red: 232/255, green: 210/255, blue: 149/255))
                    .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color.black, lineWidth: 1)
                    )
                
                
                // DETAILS BUTTON
                Button("Details") {
                    showDetails.wrappedValue.toggle()
                }
                .padding(.leading, 10)
                .foregroundColor(.black)
                
                Spacer()
                
                
                // ==========================
                // CLICKABLE JOIN BUTTON
                // ==========================
                if status == "Join" {
                    NavigationLink(destination: RoomDetailView(roomName: roomName)) {
                        Text("Join")
                            .font(.system(size: 22))
                            .foregroundColor(.black)
                    }
                } else {
                    Text("Closed")
                        .font(.system(size: 22))
                        .foregroundColor(.black)
                }
            }
            
            
            // DETAILS DROPDOWN
            if showDetails.wrappedValue {
                Text(capacityInfo)
                    .padding(10)
                    .background(Color(red: 240/255, green: 240/255, blue: 240/255))
                    .cornerRadius(6)
                    .foregroundColor(.red)
                    .font(.system(size: 20))
            }
        }
        .padding(.horizontal, 20)
    }
}


#Preview {
    RoomsView()
}
