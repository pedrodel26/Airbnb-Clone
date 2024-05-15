//
//  ProfileOptionRowView.swift
//  Airbnb
//
//  Created by Pedro Delmondes  on 14/05/2024.
//

import SwiftUI

struct ProfileOptionRowView: View {
    let imageName: String
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
            
            Text(title)
            
            Spacer()
            
            Image(systemName: "chevron.right")
        }
        
        Divider()
    }
}

#Preview {
    ProfileOptionRowView(imageName: "Gear", title: "Settings")
}
