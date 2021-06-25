//
//  HomeDetails.swift
//  TableViewSwiftUI
//
//  Created by Ahmed kamal on 6/25/21.
//

import SwiftUI

struct HomeDetails: View {
    
    var video: Video
    
    var body: some View {
    
            VStack(spacing: 20) {
                
                Spacer()
              
                Image(video.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .cornerRadius(12)
                
                Text(video.title)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                HStack(spacing: 40) {
                    Label("\(video.viewCount)", systemImage: "food-placeholder")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text(video.uploadDate)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                Text(video.description)
                    .font(.body)
                    .padding()
                
                Spacer()
                Link(destination: video.url, label: {
                    Text("watch now")
                        .bold()
                        .font(.title2)
                        .frame(width: 280, height: 55)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding()
                    
                })
        }
    }
}

struct HomeDetails_Previews: PreviewProvider {
    static var previews: some View {
        HomeDetails(video: VideoList.topTen.first!)
    }
}
