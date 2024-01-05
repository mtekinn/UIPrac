//
//  DetailView.swift
//  HackerNewsApp
//
//  Created by Mehmet Tekin on 5.01.2024.
//

import SwiftUI


struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}



