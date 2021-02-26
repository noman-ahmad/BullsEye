//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Noman Ahmad on 2/24/21.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        if let url = Bundle.main.url(forResource: "BullsEye", withExtension: "html") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
}
