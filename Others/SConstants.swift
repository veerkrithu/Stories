//
//  SConstants.swift
//  Stories
//
//  Created by Ganesan, Veeramani - Contractor {BIS} on 10/22/18.
//  Copyright © 2018 Ganesan, Veeramani. All rights reserved.
//

import Foundation

struct HttpVerbs {
    
    //Type Properties
    static let kPost: String    = "POST"
    static let kGet: String     = "GET"
    static let kPut: String     = "PUT"
    static let kPatch: String   = "PATCH"
    static let kDelete: String  = "DELETE"
}

struct ArticleEndPoints {
    
    //Type Properties
    static let kGetArticle: String              = "article/getArticle"
    static let kGetArticles: String             = "article/getArticles"
    static let kMinuteStreamArticles: String    = "article/minuteStreamArticles"
    static let kArticleMapper: String           = "article/articleMapper"
}

struct ArticleAttributes {
    static let kBody: String        = "body"
    static let kTitle: String       = "title"
    static let kDateTime: String    = "dateTime"
    static let kImage: String       = "image"
    static let kSource: String      = "source"
}
