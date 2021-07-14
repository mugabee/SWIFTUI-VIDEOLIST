//
//  VideoListView.swift
//  TOP-LIST
//
//  Created by MUGABE RICHARD on 13/07/2021.
//

import SwiftUI

struct VideoListView: View {
    
    var videos: [Video] = VideoList.topTen
    
    var body: some View {
        NavigationView{
            List(videos, id: \.id) { video in
                NavigationLink(destination: VideoDetailView(video: video),
                    label: {
                        Image(video.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 70)
                            .cornerRadius(4)
                            .padding(.vertical, 4)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            
                            Text(video.title)
                                .fontWeight(.semibold)
                                .lineLimit(12)
                                .minimumScaleFactor(0.5)
                            
                            Text(video.uploadDate)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    })
                
                
            }
            .navigationTitle("YouTube Tutorials")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
