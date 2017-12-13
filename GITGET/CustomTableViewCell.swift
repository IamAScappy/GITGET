//
//  CustomTableViewCell.swift
//  GITGET
//
//  Created by Bo-Young PARK on 05/12/2017.
//  Copyright © 2017 Bo-Young PARK. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    //profileCell
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileTitleLabel: UILabel!
    @IBOutlet weak var profileDetailLabel: UILabel!
    
    //themeCell
    @IBOutlet weak var themeImageView: UIImageView!
    @IBOutlet weak var themeTitleLabel: UILabel!
    
    //detailCell
    @IBOutlet weak var detailTitleLabel: UILabel!
    
    //modifiableCell
    @IBOutlet weak var modifiableTitleLabel: UILabel!
    @IBOutlet weak var modifiableTextField: UITextField!
    
    //contributionCell
    @IBOutlet weak var contributionUserNameTextLabel: UILabel!
    @IBOutlet weak var contributionsWebView: UIWebView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.contributionsWebView.delegate = self
        self.contributionsWebView.scrollView.bounces = false
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

extension CustomTableViewCell:UIWebViewDelegate {
    func webViewDidFinishLoad(_ webView: UIWebView) {
        webView.stringByEvaluatingJavaScript(from: "document.getElementsByTagName('body')[0].style.fontFamily =\"-apple-system\"")
        webView.stringByEvaluatingJavaScript(from: "document.getElementsByTagName('body')[0].style.fontSize = '10px'")
    }
}
