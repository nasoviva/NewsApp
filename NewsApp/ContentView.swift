//
//  ContentView.swift
//  NewsApp
//
//  Created by hverda on 04/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("NewsApp")
        }
    }
}

#Preview {
    ContentView()
}

struct Post: Identifiable {
    let id: String
    let title: String
}

let posts = [Post(id: "1", title: "Hello"),
             Post(id: "1", title: "Hi"),
             Post(id: "1", title: "Hey")]
