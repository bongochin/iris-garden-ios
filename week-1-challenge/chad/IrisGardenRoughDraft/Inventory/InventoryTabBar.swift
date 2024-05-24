//
//  InventoryTabBar.swift
//  IrisGardenRoughDraft
//
//  Created by Marie Tapang on 5/23/24.
//

import SwiftUI

enum Tabs: Int {
    case cosmicSailor = 0
    case romanticHydrangea = 1
    case dreamingAfternoon = 2
}

struct InventoryTabBar: View {
    
    @Binding var selectedTab: Tabs
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(spacing: 0) {
                Button(action: {
                    // switch to cosmicSailor
                    selectedTab = .cosmicSailor
                    
                }, label: {
                    VStack(alignment: .center) {
                        Text("Cosmic Sailor")
                    }
                    
                })
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Button(action: {
                    // switch to romantic hydrangea
                    selectedTab = .romanticHydrangea
                    
                }, label: {
                    VStack(alignment: .center) {
                        Text("Romantic Hydrangea")
                    }
                })
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Button(action: {
                    // switch to dreaming afternoon
                    selectedTab = .dreamingAfternoon
                    
                }, label: {
                    VStack(alignment: .center) {
                        Text("Dreaming Afternoon")
                    }
                })
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 30, alignment: .leading)
        .foregroundColor(.black)
        
    }
}

#Preview {
    InventoryTabBar(selectedTab: .constant(.cosmicSailor))
}
