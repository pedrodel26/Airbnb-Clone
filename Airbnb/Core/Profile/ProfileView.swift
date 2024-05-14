//
//  ProfileView.swift
//  Airbnb
//
//  Created by Pedro Delmondes  on 14/05/2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Profile")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("Login to start planning your next trip")
        }
        
    }
}

#Preview {
    ProfileView()
}
