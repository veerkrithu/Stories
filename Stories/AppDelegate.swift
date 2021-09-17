//
//  AppDelegate.swift
//  Stories
//
//  Created by Ganesan, Veeramani on 10/17/18.
//  Copyright © 2018 Ganesan, Veeramani. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    private func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        let serviceManager = ServiceManager(withAppUrl: "https://eventregistry.org/api/v1/article/", httpEndPoint: "getArticles", httpMethod: "POST", domainName: "Stories")
        
        let requestBody = [
            "action": "getArticles",
            "keyword": "jamal khashoggi",
            "articlesPage": 1,
            "articlesCount": 10,
            "articlesSortBy": "date",
            "articlesSortByAsc": false,
            "articlesArticleBodyLen": -1,
            "resultType": "articles",
            "dataType": ["news", "pr"],
            "apiKey": "51b85af8-13f4-4e6e-aa33-829cd58a8328",
            "forceMaxDataTimeWindow": 31,
            "lang": "eng",
            "includeArticleImage": "true",
            "includeArticleVideos": "true",
            "includeArticleLocation": "true",
            "includeConceptImage": "true",
            
            ] as [String : Any]
        
        
        serviceManager.sendRequest(withBody: requestBody, theHeader: ["Content-Type": "application/json"]) { (data, error) in
            
            if let data = data {
                let result = try? JSONSerialization.jsonObject(with: data, options: .allowFragments)
                print(result!)
            }
        }
        
        
        
        let serviceManager1 = ServiceManager(withAppUrl: "https://eventregistry.org/api/v1/article/", httpEndPoint: "getArticle", httpMethod: "POST", domainName: "Stories")
        
        
        let requestBody1 = [
           
            "resultType": "info",
            "apiKey": "51b85af8-13f4-4e6e-aa33-829cd58a8328",
            "lang": "eng",
            "articleUri": "971081179",
            "includeArticleImage" : "true",
            "includeArticleVideos" : "true",
            "includeArticleTitle" : "true"
            ] as [String : Any]
        
        serviceManager1.sendRequest(withBody: requestBody1, theHeader: ["Content-Type": "application/json"]) { (data, error) in
            
            if let data = data {
                let result = try? JSONSerialization.jsonObject(with: data, options: .allowFragments)
                //print(result!)
            }
        }
        

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

