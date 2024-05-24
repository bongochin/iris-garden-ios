//
//  HeaderView.swift
//  IrisGardenRoughDraft
//
//  Created by Marie Tapang on 5/23/24.
//

import SwiftUI

struct HeaderView: View {
    @Binding var showMenu: Bool
    var headerTitle: String

    var body: some View {
        HStack {
            Button(action: {
                self.showMenu.toggle()
            }, label: {
                if showMenu {
                    Image(systemName: "xmark")
                        .foregroundColor(.purple)
                } else {
                    Image(systemName: "line.horizontal.3")
                }
            })
            
            Text(headerTitle)
            
            Spacer()
            
            Button(action: {
                print("settingsbutton press")
            }, label: {
                Image(systemName: "gearshape.fill")
            })
        }
        .foregroundColor(.purple)
        .offset(x: showMenu ? UIScreen.main.bounds.width : 0)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .padding()
        
        Spacer()
    }
}

#Preview {
    HeaderView(showMenu: .constant(false), headerTitle: "Home")
}
