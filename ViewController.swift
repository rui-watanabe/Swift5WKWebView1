//
//  ViewController.swift
//  Swift5WKWebView1
//
//  Created by watar on 2020/07/04.
//  Copyright © 2020 rui watanabe. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    var webView = WKWebView()
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    @IBOutlet weak var toolBar: UIToolbar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //size
        webView.frame = CGRect(x: 0, y:toolBar.frame.size.height, width: view.frame.size.width, height: view.frame.size.height - toolBar.frame.size.height * 2)
        
        view.addSubview(webView)
        
        // loading
        webView.navigationDelegate = self
        let url = URL(string: "https://www.yahoo.co.jp/")
        let request = URLRequest(url: url!)
        
        webView.load(request)
    }
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        print("start loading...")
        indicator.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("finished load")
        indicator.stopAnimating()
    }
    
    @IBAction func next(_ sender: Any) {
        webView.goForward()
    }
    
    
    @IBAction func back(_ sender: Any) {
        webView.goBack()
    }
    

}

