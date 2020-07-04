//
//  ViewController.swift
//  Swift5WKWebView1
//
//  Created by watar on 2020/07/04.
//  Copyright © 2020 rui watanabe. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    var webView = WKWebView()
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    @IBOutlet weak var toolBar: UIToolbar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //size
        webView.frame = CGRect(x: 0, y:toolBar.frame.size.height, width: view.frame.size.width, height: view.frame.size.height - toolBar.frame.size.height * 2)
        
        view.addSubview(webView)
    }
    
    @IBAction func next(_ sender: Any) {
    }
    
    
    @IBAction func back(_ sender: Any) {
    }
    

}

