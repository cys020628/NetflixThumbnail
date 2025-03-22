//
//  ContentView.swift
//  NetflixThumbnail
//
//  Created by 영석 on 3/22/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // 탭
        TabView {
            //Text("1탭 화면")
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .toolbarBackground(Color.black, for: .tabBar)
            
            Text("2탭 화면")
                .tabItem {
                    Image(systemName: "gamecontroller")
                    Text("Game")
                }
            
            Text("3탭 화면")
                .tabItem {
                    Image(systemName: "play.rectangle.on.rectangle")
                    Text("New & Hot")
                }
            
            Text("4탭 화면")
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("나의 넷플릭스")
                }
            
            
            
            
        }
        
        
        
    }
}

#Preview {
    ContentView()
}
