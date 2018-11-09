//
//  SArticleTableViewCell.swift
//  Stories
//
//  Created by Ganesan, Veeramani on 10/21/18.
//  Copyright © 2018 Ganesan, Veeramani. All rights reserved.
//

import UIKit

class SArticleTableViewCell : UITableViewCell {
    
    @IBOutlet weak var articleImage: UIImageView!
    @IBOutlet weak var articleTitle: UILabel!
    @IBOutlet weak var articleSource: UILabel!
    @IBOutlet weak var articleTime: UILabel!
    var activityCntlr: UIActivityIndicatorView!

    var articleViewModel: SArticleViewModel! {
        
        didSet {
            self.articleTitle.text = articleViewModel.title
            self.articleTime.text = articleViewModel.timeAgo
            self.articleSource.text = articleViewModel.source
            
            if let imageUrl = articleViewModel.imageUrl {
                self.loadArticleImage(imageUrl: imageUrl)
            }
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.contentView.layer.cornerRadius = 10.0
        self.contentView.layer.backgroundColor = UIColor.white.cgColor
        self.contentView.layer.masksToBounds = false
        
        self.contentView.layer.shadowColor = UIColor.gray.cgColor
        self.contentView.layer.shadowRadius = 3.5
        self.contentView.layer.shadowOpacity = 0.4
        self.contentView.layer.shadowOffset = CGSize(width: 1, height: 1)
        
        self.activityCntlr = UIActivityIndicatorView(style: .white)
        self.activityCntlr.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        self.contentView.addSubview(self.activityCntlr)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.contentView.frame = self.contentView.frame.inset(by: UIEdgeInsets(top: 4, left: 4, bottom: 4, right: 4))
        
    }
    
    func configureCell() {
        
        self.articleTitle.sizeToFit()
        
        self.articleImage.layer.shadowColor = UIColor.black.cgColor
        self.articleImage.layer.shadowRadius = 8.0
        self.articleImage.layer.shadowOpacity = 0.4
        self.articleImage.layer.shadowOffset = CGSize(width: 1, height: 1)
        
        self.articleSource.textColor = UIColor(red: 0.33, green: 0.32, blue: 0.87, alpha: 1)
        self.articleTime.textColor = UIColor(red: 0.37, green: 0.74, blue: 0.55, alpha: 1)
    }
    
    func loadArticleImage(imageUrl: String) {
        
        let imageLoadObj = AsyncImageLoad(withURL: imageUrl)
    
        self.activityCntlr.center = self.articleImage.center
        self.activityCntlr.startAnimating()
        imageLoadObj.loadImage { [weak self] (image, error) in
            
            DispatchQueue.main.async {
                
                if error == nil {
                    self?.articleImage.image = image
                }
                else
                {
                    print(error!)
                }
                self?.activityCntlr.stopAnimating()
            }
        }
    }
}

