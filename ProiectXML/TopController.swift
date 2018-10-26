//
//  TopController.swift
//  ProiectXML
//
//  Created by Adi Veliman on 26/04/2018.
//  Copyright © 2018 Adi Veliman. All rights reserved.
//

import UIKit
import WebKit
import JavaScriptCore

class TopController: UIViewController,WKNavigationDelegate {

    var jsContext: JSContext!
    
    @IBOutlet weak var screen: WKWebView!
    private var webView: WKWebView!
    @IBOutlet weak var webVieww: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Adding webView content
        let localHtmlFile = Bundle.main.url(forResource: "XMLechipe", withExtension: "xml");
        
        //creating request
        let request = URLRequest(url: (localHtmlFile)!)
        
        //loading request
        webVieww.loadRequest(request)
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


