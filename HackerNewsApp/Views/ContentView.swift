//
//  ContentView.swift
//  HackerNewsApp
//
//  Created by Mehmet Tekin on 27.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationStack {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("Hacker News")
        }
        .onAppear(perform: {
            networkManager.fetchData()
        })
    }
}

//let posts = [
//    Post(objectID: "1", points: 10, title: "Test", ulr: "https://twitter.com/Bertrand_Meyer/status/1742613897675178347")
//]


#Preview {
    ContentView()
}
