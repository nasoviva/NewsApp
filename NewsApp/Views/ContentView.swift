//
//  ContentView.swift
//  NewsApp
//
//  Created by hverda on 04/07/2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
            }
            .navigationBarTitle("NewsApp")
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
    }
}

#Preview {
    ContentView()
}

