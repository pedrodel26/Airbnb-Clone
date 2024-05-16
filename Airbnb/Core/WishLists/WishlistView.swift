//
//  WishlistView.swift
//  Airbnb
//
//  Created by Pedro Delmondes  on 16/05/2024.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 32) {
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Log in to view your wishlists")
                            .font(.headline)
                        
                        Text("You can create, view or edit wishlists once you've logged in")
                    }
                    
                    Button(action: {
                        print("Login")
                    }, label: {
                        Text("Log in")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 48)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    })
                    
                    Spacer()
                }
                .padding()
                .navigationTitle("Wishlist")
            }
        }
    }
}

#Preview {
    WishlistView()
}
