//
//  PostDetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Jasmine Ben-Whyte on 2/4/24.
//

import UIKit

import Nuke


class PostDetailViewController: UIViewController {
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var overviewDetailsLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = overviewDetailsLabel.frame.size

        overviewDetailsLabel.text = post.caption.removingHTMLTags()
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: backgroundImageView)
        }
        navigationItem.largeTitleDisplayMode = .never
    }
    

}
