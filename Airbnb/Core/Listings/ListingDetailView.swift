//
//  ListingDetailView.swift
//  Airbnb
//
//  Created by Pedro Delmondes  on 26/04/2024.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    
    var images = [
        "listening-1",
        "listening-2",
        "listening-3",
        "listening-4"
    ]
    
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        ScrollView {
            ZStack(alignment: .topLeading) {
                ListingImageCarouselView()
                
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background {
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                })
                .padding(32)
                
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    HStack(spacing: 2) {
                        Image(systemName: "star.fill")
                        
                        Text("4.87")
                        
                        Text("-")
                        
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                        
                    }
                    
                    Text("Miami, Florida")
                }
                .font(.caption)
                
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
            Divider()
            
            HStack {
                VStack {
                    Text("Entire villa hosted by John Smith")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack {
                        Text("4 guests")
                        Text("4 bedrooms")
                        Text("4 beds")
                        Text("3 baths")
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                
                Spacer()
                
                Image("profile-man")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16) {
                ForEach (0..<2) { feature in
                    HStack(spacing: 12) {
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading) {
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Superhost are experience, highly rated hosts who are commited to providing great stars for guests")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Where you'll sleep")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(1..<5) { bedroom in
                            VStack {
                                Image(systemName: "bed.double.fill")
                                
                                Text("Bedroom \(bedroom)")
                            }
                            
                        }
                        .frame(width: 132, height: 100)
                        .overlay {
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(lineWidth: 1.0)
                                .foregroundStyle(.gray)
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
                    
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16) {
                Text("What this place offers")
                    .font(.headline)
                
                ForEach(0..<5) { feature in
                    HStack {
                        Image(systemName: "wifi")     
                            .frame(width: 32)
                        
                        Text("Wifi")
                            .font(.footnote)
                        
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Where you'll be")
                    .font(.headline)
                
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                
            }
            .padding()
            
        }
        .ignoresSafeArea()
        .padding(.bottom, 64)
        .overlay(alignment: .bottom) {
            VStack {
                Divider()
                    .padding(.bottom)
                
                HStack {
                    VStack{
                        Text("$500")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        Text("Total before taxes")
                            .font(.caption)
                        
                        Text("Oct 15 - 22")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    
                    Spacer()
                    
                    Button{
                        
                    } label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                    }
                }
                .padding(.horizontal, 32)
            }
            .background(.white)
        }
    }
}

#Preview {
    ListingDetailView()
}
