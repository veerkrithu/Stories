//
//  SArticleHomeViewController.swift
//  Stories
//
//  Created by Ganesan, Veeramani on 10/21/18.
//  Copyright © 2018 Ganesan, Veeramani. All rights reserved.
//

import UIKit

class SArticleHomeViewController:UIViewController {
    
    @IBOutlet weak var articleTableView: UITableView!
    
    var articleViewModels = [SArticleViewModel]()
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        
        self.title = "News"
        
        self.articleTableView.delegate = self
        self.articleTableView.dataSource = self
        self.articleTableView.separatorStyle = .none
        
        fetchArticles()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destinationViewController = segue.destination as? SArticleDetailViewController
        destinationViewController?.articleViewModel = articleViewModels[0]
    }
}

extension SArticleHomeViewController: UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let articleTableViewCell = tableView.dequeueReusableCell(withIdentifier: "ArticleTableViewCell") as! SArticleTableViewCell
    
        articleTableViewCell.articleViewModel = articleViewModels[indexPath.row]
        articleTableViewCell.configureCell()
        
        return articleTableViewCell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return articleViewModels.count
    }
}

extension SArticleHomeViewController: UITableViewDataSource {
    
    
}

extension SArticleHomeViewController {
    
    func fetchArticles() {
        
        SArticleServices.sharedArticleServices.fetchData { [weak self] (articles) in
            
            if let articles = articles {
                self?.articleViewModels = articles.map({
                    return SArticleViewModel(article: $0)})
            }
            
            DispatchQueue.main.async {
                self?.articleTableView.reloadData()
            }
        }
    }
}
