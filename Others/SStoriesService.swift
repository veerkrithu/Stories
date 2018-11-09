//
//  SStoriesService.swift
//  Stories
//
//  Created by Ganesan, Veeramani - Contractor {BIS} on 10/24/18.
//  Copyright © 2018 Ganesan, Veeramani. All rights reserved.
//

import Foundation

protocol SStoriesService: class {
    
    //PAT for Protocol Generics
    associatedtype storiesModel
    
    func fetchData(withCompletionHandler handler:@escaping ([storiesModel]?)->Void)
    func parseData(response: Data)->[storiesModel]?
}

extension SStoriesService {
    
    func fetchData(withAppUrl appUrl: String, httpEndPoint endPoint: String, httpVerb: String, requestHeader:[String : String]?, requestBody: [String : Any]?, andCompletionHandler completionHandler:@escaping ([storiesModel]?)->Void) {
        
        ServiceManager(withAppUrl: appUrl, httpEndPoint: endPoint, httpMethod: httpVerb, domainName: ServiceManager.storiesDomain).sendRequest(withBody: requestBody, theHeader: requestHeader) { [weak self] (data, error) in
            
            if error != nil {
                completionHandler(nil)
            }
            else {
                
                guard let data = data else { return completionHandler(nil) }
                completionHandler(self?.parseData(response: data))
            }
        }
    }
}
