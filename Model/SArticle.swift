//
//  SArticle.swift
//  Stories
//
//  Created by Ganesan, Veeramani on 10/20/18.
//  Copyright © 2018 Ganesan, Veeramani. All rights reserved.
//

import Foundation

struct SArticle {
    
    let title: String
    let descritpion: String
    let dateTime: String
    let language: String
    let imageUrl: String?
    let videoUrl: String?
    let type: String?
    let source: String?
    let articleUrl: String?
    
    init(title: String, descritpion: String, dateTime: String, imageUrl: String, source: String, type: String? = nil, articleUrl: String? = nil, videoUrl:String? = nil) {
        self.title = title
        self.descritpion = descritpion
        self.dateTime = dateTime
        self.imageUrl = imageUrl
        self.language = "eng"
        self.type = type
        self.source = source
        self.articleUrl = articleUrl
        self.videoUrl = videoUrl
    }
}
