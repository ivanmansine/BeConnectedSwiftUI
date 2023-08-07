//
//  HomeView.swift
//  BeConnected_v1
//
//  Created by Manso García Iván on 3/8/23.
//

import SwiftUI

struct HomeView: View{
    
    @Environment(\.openURL) var openURL
    @StateObject var stack = RootView(service: NewsService())
    
    var body: some View {
        Group {
            
            switch stack.state {
            case .loading:
                ProgressView()
                
            case .failed(let error):
                ErrorView(error: error, handler: stack.getArticles)
                
            case .success(let articles):
                NavigationView {
                    List(articles) { item in
                        ArticleCellView(article: item)
                            .onTapGesture {
                            load(from: item.url)
                        }
                    }
                    .navigationTitle("Noticias")

                }
            }
            
        }
        .onAppear(perform: stack.getArticles)
    }
    
    func load(from url: String?) {
        guard let link = url, let url = URL(string: link) else { return }
        
        openURL(url)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
