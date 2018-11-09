//
//  SArticleServices.swift
//  Stories
//
//  Created by Ganesan, Veeramani - Contractor {BIS} on 10/22/18.
//  Copyright © 2018 Ganesan, Veeramani. All rights reserved.
//

import Foundation

typealias ArticleSerivceCompletionHandler = (_ articles: [SArticle]?)->Void

class SArticleServices:SStoriesService {
    
    static let sharedArticleServices = SArticleServices()
    
    typealias storiesModel = SArticle
    
    private var requestBody: [String : Any] {
        
        return [
            "action": "getArticles",
            "keyword": "Top Stories",
            "articlesPage": 1,
            "articlesCount": 10,
            "articlesSortBy": "date",
            "articlesSortByAsc": false,
            "articlesArticleBodyLen": -1,
            "resultType": "articles",
            "dataType": ["news", "pr"],
            "apiKey": ServiceManager.storiesApiKey,
            "forceMaxDataTimeWindow": 31,
            "lang": "eng",
            "includeArticleImage": "true",
            "includeArticleVideos": "true",
            "includeArticleLocation": "true",
            "includeConceptImage": "true",
            "includeArticleBasicInfo":"true",
            "includeArticleExtractedDates":"true"
        ]
    }
    
    private var requestHeader: [String : String]? {
        
        return ["Content-Type": "application/json"]
    }

    func fetchData(withCompletionHandler handler: @escaping ([SArticle]?) -> Void) {
     
        fetchData(withAppUrl: ServiceManager.storiesBaseUrl, httpEndPoint: ArticleEndPoints.kGetArticles, httpVerb: HttpVerbs.kPost, requestHeader: self.requestHeader, requestBody: self.requestBody) { (articles) in
            
            handler(articles)
        }
    }
    
    func parseData(response: Data) -> [SArticle]? {
        
        guard let jsonData = try? JSONSerialization.jsonObject(with: response, options: .allowFragments) else { return nil }
        
        guard let value = jsonData as? [String : Any] else { return nil }
        
        guard let articles = value["articles"] as? [String : Any] else { return nil }
        
        guard let results = articles["results"] as? [Any] else { return nil }
        
        var arrArticles = [SArticle]()
        
        for result in results {
            
            let dictArticle = result as? [String: Any]
            
            if let dictArticle = dictArticle {
                
                var sourceTitle = "NA"
                
                if let arrArray = dictArticle[ArticleAttributes.kSource] as? [String : Any] {
                    sourceTitle = arrArray[ArticleAttributes.kTitle] as? String ?? "NA"
                }
    
                let article = SArticle(title: dictArticle[ArticleAttributes.kTitle] as? String ?? "NA", descritpion: dictArticle[ArticleAttributes.kBody] as? String ?? "NA", dateTime: dictArticle[ArticleAttributes.kDateTime] as? String ?? "NA", imageUrl: dictArticle[ArticleAttributes.kImage] as? String ?? "NA", source: sourceTitle)
                
                arrArticles.append(article)
            }
        }
        
        return arrArticles
    }
}


