//
//  ContentView.swift
//  IrisGardenRoughDraft
//
//  Created by Marie Tapang on 5/17/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showMenu: Bool = false
    
    var body: some View {
        
        NavigationView {
            ZStack {
                VStack {
                    HeaderView(showMenu: self.$showMenu, headerTitle: "Home")
                    
                    // frame 345
                    HStack {
                        Image("puppy")
                            .resizable()
                            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                            .shadow(radius: 3)
                        Image("puppy")
                            .resizable()
                            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                            .shadow(radius: 3)
                        Image("puppy")
                            .resizable()
                            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                            .shadow(radius: 3)
                    }
                    .padding(.vertical, 30.0)
                    // to-do: make dynamic
                    .frame(height: 250)
                    // to-do: create top & bottom borders
                    
                    // item cards list
                    VStack {
                        GeometryReader { geometry in
                            HStack {
                                Button(action: {
                                    // to-do
                                }) {
                                    Text("# Notifications")
                                        .foregroundColor(.black)
                                        .frame(width: geometry.size.width * 2 / 3, height: 40)
                                        .background(Color.gray)
                                }
                                Button(action: {
                                    // to-do
                                }) {
                                    Text("#")
                                        .foregroundColor(.black)
                                        .frame(width: geometry.size.width * 1 / 3, height: 40)
                                        .background(Color.gray)
                                }
                                .padding(0.0)
                            }
                        }
                        .frame(height: 60)
                        
                        HStack {
                            Text("Button")
                        }
                        HStack {
                            Text("Button")
                        }
                        HStack {
                            Text("Button")
                        }
                        
                        Spacer()
                        
                    }
                    
                    Spacer()
                }
                MenuView(showMenu: self.$showMenu)
                    .offset(x: showMenu ? 0 : UIScreen.main.bounds.width)
            }
        }
    }
}

#Preview {
    ContentView()
}
