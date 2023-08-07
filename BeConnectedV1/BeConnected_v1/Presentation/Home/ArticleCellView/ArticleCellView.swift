//
//  ArticleCellView.swift
//  BeConnected_v1
//
//  Created by Manso García Iván on 3/8/23.
//

import SwiftUI
import URLImage

struct ArticleCellView: View{
    let article: Article
    
    var body: some View{
        HStack{
            if let imgURL = article.image,
               let url = URL(string: imgURL) {
                URLImage(url,
                         failure: { error, _ in
                    PlaceholderImageView()
                },
                         content: { image, info in
                    image
                        .resizable()
                        .scaledToFill()
                })
                .frame(width: 100, height: 100)
                .cornerRadius(10)
                .environment(\.urlImageOptions, URLImageOptions(fetchPolicy: .returnStoreElseLoad(downloadDelay: 0.25)))
            } else {
                PlaceholderImageView()
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text(article.title ?? "")
                    .foregroundColor(.black)
                    .font(.system(size: 18, weight: .semibold))
                Text(article.source ?? "N/A")
                    .foregroundColor(.gray)
                    .font(.footnote)
            }
        }
    }
}

struct PlaceholderImageView: View {
    var body: some View {
        Image(systemName: "photo.fill")
            .foregroundColor(.white)
            .background(Color.gray)
            .frame(width: 100, height: 100)
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleCellView(article: .noticiaEjemplo)
            .previewLayout(.sizeThatFits)
    }
}
