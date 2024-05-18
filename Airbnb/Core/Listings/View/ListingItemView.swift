//
//  ListingItemView.swift
//  Airbnb
//
//  Created by Pedro Delmondes  on 24/04/2024.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "listening-1",
        "listening-2",
        "listening-3",
        "listening-4"
    ]
    
    var body: some View {
        VStack(spacing: 8) {
            
            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            //LISTING DETAILS
            
            HStack(alignment: .top) {
            //DETAILS
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("12 min away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack(spacing: 4) {
                        Text("$ 567,00")
                            .fontWeight(.bold)
                            .foregroundStyle(.black)
                        Text("night")
                            .foregroundStyle(.black)
                    }
                }
                .padding(.bottom)
                
                Spacer()
                
                //RATING
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    Text("4.0")
                }
                .font(.footnote)
                .foregroundStyle(.black)
            }
            
        }
        

    }
}

#Preview {
    ListingItemView()
}
