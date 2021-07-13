//
//  VideoDetailView.swift
//  TOP-LIST
//
//  Created by MUGABE RICHARD on 13/07/2021.
//

import SwiftUI

struct VideoDetailView: View {
    var video: Video
    var body: some View {
        VStack {
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(12)
            Text(video.title)
                .font(.title)
                .fontWeight(.semibold)
                .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
                .padding()
            
            HStack{
                Text("eye")
            }
            
        }
    }
}

struct VideoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailView(video: VideoList.topTen.first!)
    }
}
