//
//  ListingImageCarouselView.swift
//  Airbnb
//
//  Created by Pedro Delmondes  on 26/04/2024.
//

import SwiftUI

struct ListingImageCarouselView: View {
    
    var images = [
        "listening-1",
        "listening-2",
        "listening-3",
        "listening-4"
    ]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .frame(height: 320)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView()
}
