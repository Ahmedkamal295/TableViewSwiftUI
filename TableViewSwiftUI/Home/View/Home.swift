//
//  ContentView.swift
//  TableViewSwiftUI
//
//  Created by Ahmed kamal on 6/24/21.
//

import SwiftUI

struct Home: View {
    
    var videos: [Video] = VideoList.topTen
    //MARK:- body
    var body: some View {
        NavigationView {
            List(videos, id: \.id) { video in
                NavigationLink(destination: HomeDetails(video: video), label: {
                    Image(video.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 70)
                        .cornerRadius(4)
                        .padding(.vertical, 4)
                    VStack(alignment: .leading, spacing: 5) {
                       
                        Text(video.title)
                            .fontWeight(.semibold)
                            .lineLimit(2)
                            .minimumScaleFactor(0.5)
                        
                        Text(video.uploadDate)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                })
                
            }
            .navigationTitle("Welcome SwiftUI")
        }
        
    }
}
//MARK:- call Content home data
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

