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
            List(0 ..< 20) { item in
                Image("average-dev")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 70)
                    .cornerRadius(4)
                
                VStack(alignment: .leading, spacing: 5) {
                    
                    Text("I'm an Average Developer")
                        .fontWeight(.semibold)
                        .lineLimit(12)
                        .minimumScaleFactor(0.5)
                    
                    Text("January 1, 2021")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
            .navigationTitle("Sean's Top 10")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
