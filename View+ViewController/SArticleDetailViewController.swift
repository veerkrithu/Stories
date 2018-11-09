//
//  SArticleDetailViewController.swift
//  Stories
//
//  Created by Ganesan, Veeramani - Contractor {BIS} on 11/8/18.
//  Copyright © 2018 Ganesan, Veeramani. All rights reserved.
//

import UIKit

class SArticleDetailViewController:UIViewController {
    
    @IBOutlet weak var articleDate: UILabel!
    @IBOutlet weak var articleTitle: UILabel!
    @IBOutlet weak var articleImage: UIImageView!
    @IBOutlet weak var articleDescription: UITextView!
    
    var articleViewModel: SArticleViewModel! {
        
        didSet {
            
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.articleImage.layer.shadowColor = UIColor.gray.cgColor
        self.articleImage.layer.shadowRadius = 5.0
        self.articleImage.layer.shadowOpacity = 0.4
        self.articleImage.layer.shadowOffset = CGSize(width: 0, height: 1)
        
        self.articleDescription.text = "jdhhrf ffmrfnrmfrrmgrmg\n rmgnmrngmrr rmgnmrgr grmgbrg rgmr gmr grgrgmrgrmg rmgnrmgmrg rgnrmngr grmgrmg r grmngrm g rgmrgmr grgkrngmr grgnkr gr grmngr gr grm gmr g rgrmgnrm grgrgrm gr grgknrkgnrkgrjgr kgnrkngkrhgr grkgnrkngkrg grkgnkrng  rkrnkrngkrngk grkngrkng ekrf vhjg f d  jd nnfve efkfjnkenfe kfnl jdhhrf ffmrfnrmfrrmgrmg rmgnmrngmrr rmgnmrgr grmgbrg rgmr gmr grgrgmrgrmg rmgnrmgmrg rgnrmngr grmgrmg r grmngrm g rgmrgmr grgkrngmr grgnkr gr grmngr gr grm gmr g rgrmgnrm grgrgrm gr grgknrkgnrkgrjgr kgnrkngkrhgr grkgnrkngkrg grkgnkrng  rkrnkrngkrngk grkngrkng ekrf vhjg f d  jd nnfve efkfjnkenfe kfnl jdhhrf ffmrfnrmfrrmgrmg rmgnmrngmrr rmgnmrgr grmgbrg rgmr gmr grgrgmrgrmg rmgnrmgmrg rgnrmngr grmgrmg r grmngrm g rgmrgmr grgkrngmr grgnkr gr grmngr gr grm gmr g rgrmgnrm grgrgrm gr grgknrkgnrkgrjgr kgnrkngkrhgr grkgnrkngkrg grkgnkrng  rkrnkrngkrngk grkngrkng ekrf vhjg f d  jd nnfve efkfjnkenfe kfnl jdhhrf ffmrfnrmfrrmgrmg rmgnmrngmrr rmgnmrgr grmgbrg rgmr gmr grgrgmrgrmg rmgnrmgmrg rgnrmngr grmgrmg r grmngrm g rgmrgmr grgkrngmr grgnkr \ngr grmngr gr grm gmr g rgrmgnrm grgrgrm gr grgknrkgnrkgrjgr kgnrkngkrhgr grkgnrkngkrg grkgnkrng  rkrnkrngkrngk grkngrkng ekrf vhjg f d  jd nnfve efkfjnkenfe kfnl jdhhrf ffmrfnrmfrrmgrmg rmgnmrngmrr rmgnmrgr grmgbrg rgmr gmr grgrgmrgrmg rmgnrmgmrg rgnrmngr grmgrmg r grmngrm g rgmrgmr grgkrngmr grgnkr gr grmngr gr grm gmr g rgrmgnrm grgrgrm gr grgknrkgnrkgrjgr kgnrkngkrhgr grkgnrkngkrg grkgnkrng  rkrnkrngkrngk grkngrkng ekrf vhjg f d  jd nnfve efkfjnkenfe kfnl\njdhhrf ffmrfnrmfrrmgrmg\n rmgnmrngmrr rmgnmrgr grmgbrg rgmr gmr grgrgmrgrmg rmgnrmgmrg rgnrmngr grmgrmg r grmngrm g rgmrgmr grgkrngmr grgnkr gr grmngr gr grm gmr g rgrmgnrm grgrgrm gr grgknrkgnrkgrjgr kgnrkngkrhgr grkgnrkngkrg grkgnkrng  rkrnkrngkrngk grkngrkng ekrf vhjg f d  jd nnfve efkfjnkenfe kfnl jdhhrf ffmrfnrmfrrmgrmg rmgnmrngmrr rmgnmrgr grmgbrg rgmr gmr grgrgmrgrmg rmgnrmgmrg rgnrmngr grmgrmg r grmngrm g rgmrgmr grgkrngmr grgnkr gr grmngr gr grm gmr g rgrmgnrm grgrgrm gr grgknrkgnrkgrjgr kgnrkngkrhgr grkgnrkngkrg grkgnkrng  rkrnkrngkrngk grkngrkng ekrf vhjg f d  jd nnfve efkfjnkenfe kfnl jdhhrf ffmrfnrmfrrmgrmg rmgnmrngmrr rmgnmrgr grmgbrg rgmr gmr grgrgmrgrmg rmgnrmgmrg rgnrmngr grmgrmg r grmngrm g rgmrgmr grgkrngmr grgnkr gr grmngr gr grm gmr g rgrmgnrm grgrgrm gr grgknrkgnrkgrjgr kgnrkngkrhgr grkgnrkngkrg grkgnkrng  rkrnkrngkrngk grkngrkng ekrf vhjg f d  jd nnfve efkfjnkenfe kfnl jdhhrf ffmrfnrmfrrmgrmg rmgnmrngmrr rmgnmrgr grmgbrg rgmr gmr grgrgmrgrmg rmgnrmgmrg rgnrmngr grmgrmg r grmngrm g rgmrgmr grgkrngmr grgnkr \ngr grmngr gr grm gmr g rgrmgnrm grgrgrm gr grgknrkgnrkgrjgr kgnrkngkrhgr grkgnrkngkrg grkgnkrng  rkrnkrngkrngk grkngrkng ekrf vhjg f d  jd nnfve efkfjnkenfe kfnl jdhhrf ffmrfnrmfrrmgrmg rmgnmrngmrr rmgnmrgr grmgbrg rgmr gmr grgrgmrgrmg rmgnrmgmrg rgnrmngr grmgrmg r grmngrm g rgmrgmr grgkrngmr grgnkr gr grmngr gr grm gmr g rgrmgnrm grgrgrm gr grgknrkgnrkgrjgr kgnrkngkrhgr grkgnrkngkrg grkgnkrng  rkrnkrngkrngk grkngrkng ekrf vhjg f d  jd nnfve efkfjnkenfe kfnl"
    }
}
