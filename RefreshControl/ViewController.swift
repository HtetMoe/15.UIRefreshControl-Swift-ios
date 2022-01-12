//
//  ViewController.swift
//  RefreshControl
//
//  Created by Htet Moe Phyu on 10/01/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    //pull to refresh
    var refreshController : UIRefreshControl = {
        let refreshController = UIRefreshControl()
        refreshController.addTarget(self, action: #selector(didPullRefreshed), for: .valueChanged)
        return refreshController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        scrollView.refreshControl = refreshController
        
    }

    @objc func didPullRefreshed(){
        DispatchQueue.main.async {
            self.scrollView.refreshControl?.endRefreshing()
        }
    }
}

