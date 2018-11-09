//
//  SArticleViewModel.swift
//  Stories
//
//  Created by Ganesan, Veeramani on 10/22/18.
//  Copyright © 2018 Ganesan, Veeramani. All rights reserved.
//

import Foundation

class SArticleViewModel {
    
    let title: String
    let descritpion: String
    let dateTime: String
    let source: String?
    let imageUrl: String?
    
    var timeAgo: String {
        
        let strDateTime = String(self.dateTime.replacingOccurrences(of: "T", with: " ").dropLast())
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let date = dateFormatter.date(from: strDateTime)
        let secondsAgo = Int(Date().timeIntervalSince(date!))
        return strDateTime
    }
    
    init(article: SArticle) {
        
        self.title = article.title
        self.descritpion = article.descritpion
        self.source = article.source
        self.imageUrl = article.imageUrl
        self.dateTime = article.dateTime
    }
}
