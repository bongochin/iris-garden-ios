//
//  InventoryView.swift
//  IrisGardenRoughDraft
//
//  Created by Marie Tapang on 5/21/24.
//

import SwiftUI

struct InventoryView: View {
    
    @State private var showMenu: Bool = false
    @State var selectedTab: Tabs = .cosmicSailor
    
    var body: some View {
        ZStack {
            VStack{
                HeaderView(showMenu: self.$showMenu, headerTitle: "My Inventory")
                
                InventoryTabBar(selectedTab: $selectedTab)
                
                ZStack {
                    CosmicSailorView()
                        .offset(y: selectedTab == .cosmicSailor ? 0 : UIScreen.main.bounds.height)
                    
                    RomanticHydrangeaView()
                        .offset(y: selectedTab == .romanticHydrangea ? 0 : UIScreen.main.bounds.height)

                    DreamingAfternoonView()
                        .offset(y: selectedTab == .dreamingAfternoon ? 0 : UIScreen.main.bounds.height)
                }

            }
            
            MenuView(showMenu: self.$showMenu)
                .offset(x: showMenu ? 0 : UIScreen.main.bounds.width)
        }
    }
}

#Preview {
    InventoryView()
}
