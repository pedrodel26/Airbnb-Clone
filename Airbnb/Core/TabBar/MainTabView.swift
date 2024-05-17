//
//  MainTabView.swift
//  Airbnb
//
//  Created by Pedro Delmondes  on 17/05/2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
                
            WishlistView()
                .tabItem { Label("Wishlist", systemImage: "arrow.clockwise") }
            
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person.crop.circle") }
        }
    }
}

#Preview {
    MainTabView()
}
