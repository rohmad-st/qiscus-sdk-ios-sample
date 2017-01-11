//
//  ViewController.swift
//  SampleSDK
//
//  Created by Evan Purnama on 9/14/16.
//  Copyright © 2016 Evan Purnama. All rights reserved.
//

import UIKit
import Qiscus

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Qiscus Test"
        let button = UIButton(frame: CGRect(x: 50,y: 100,width: 200,height: 60))
        button.setTitle("Test Qiscus Chat 2", for: UIControlState())
        button.backgroundColor = UIColor.black
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(ViewController.goToChat), for: .touchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func goToChat(){
        print("go to chat")
        Qiscus.chat(withUsers: ["085747455300@qiscuswa.com"] , target: self, title: "Chat 2", optionalDataCompletion: { optionalData in
            print("optionalData from Example view: \(optionalData)")
        })
        
    }
}

