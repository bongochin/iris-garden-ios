//
//  MenuView.swift
//  IrisGardenRoughDraft
//
//  Created by Marie Tapang on 5/20/24.
//

import SwiftUI

struct MenuView: View {
    
    @Binding var showMenu: Bool
    
    var body: some View {
        
        NavigationStack {
            HStack(spacing: 0) {
                // left menu
                    VStack {
                        Button(action: {
                            print("X button pressed")
                            self.showMenu.toggle()
                        }) {
                            Image(systemName: "xmark")
                                .foregroundColor(.purple)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .padding(.bottom, 50.0)
                        
                        VStack {
                            NavigationLink("Home") {
                                ContentView()
                                    .navigationBarBackButtonHidden(true)
                            }
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom)
                            
                            NavigationLink(destination: InventoryView()
                                .navigationBarBackButtonHidden(true)
                            ) {
                                HStack {
                                    Image(systemName: "shippingbox")
                                        .foregroundColor(.purple)
                                    Text("My Inventory")
                                        .foregroundColor(.black)
                                }
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom)
                            
                            Button(action: {
                                print("History button pressed")
                            }) {
                                HStack {
                                    Image(systemName: "clock.arrow.circlepath")
                                        .foregroundColor(.purple)
                                    Text("History")
                                        .foregroundColor(.black)
                                }
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom)
                            
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack {
                            HStack {
                                Image(systemName: "shippingbox")
                                    .foregroundColor(.purple)
                                Text("Batches")
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            
                            Button(action: {
                                print("Receiving button pressed")
                            }) {
                                HStack {
                                    Image(systemName: "plus")
                                        .foregroundColor(.green)
                                    
                                    Text("Receiving")
                                        .foregroundColor(.black)
                                }
                            }
                            .padding(.bottom)
                            
                            Button(action: {
                                print("Outgoing button pressed")
                            }) {
                                HStack {
                                    Image(systemName: "minus")
                                        .foregroundColor(.red)
                                    Text("Outgoing")
                                        .foregroundColor(.black)
                                }
                            }
                            .padding(.bottom)
                        }
                        
                        // make a navigationlink/view later?
                        Button(action: {
                            print("Settings button pressed")
                        }) {
                            Text("Settings")
                        }
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        
                        // same as above
                        Button(action: {
                            print("Help button pressed")
                        }) {
                            Text("Help")
                        }
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        
                        Spacer()
                        
                    }
                .frame(width: UIScreen.main.bounds.width / 2)
                .edgesIgnoringSafeArea(.bottom)
                .background(Color.white)
                
                
                // right menu
                VStack {
                    // make search bar later
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search items")
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(15)
                    .overlay(RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.white, lineWidth: 2)
                        .padding(.vertical, 0)
                        .padding(.horizontal))
                    
                    // navigation links?
                    HStack {
                        Button(action: {
                            print("Cosmic sailors button pressed")
                        }) {
                            Text("cosmic sailors")
                            Spacer()
                            Image(systemName: "pin.fill")
                        }
                        .padding()
                    }
                    HStack {
                        Button(action: {
                            print("Bag button pressed")
                        }) {
                            Text("bag")
                            Spacer()
                            Image(systemName: "pin.fill")
                        }
                        .padding()
                    }
                    HStack {
                        Button(action: {
                            print("Apron button pressed")
                        }) {
                            Text("apron")
                            Spacer()
                            Image(systemName: "pin.fill")
                        }
                        .padding()
                    }
                    
                    // last search results here
                    
                    Spacer()
                }
                .frame(width: UIScreen.main.bounds.width / 2)
                .padding(.top, 130.0)
                .foregroundColor(.white)
                .edgesIgnoringSafeArea(.bottom)
                .background(Color.purple)
            }
        }
    }
}

#Preview {
    MenuView(showMenu: .constant(true))
}
