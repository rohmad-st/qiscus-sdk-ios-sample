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
        
        self.title = "Qiscus SDK Sample"
        
        let button = UIButton(frame: CGRectMake(100,100,100,40))
        button.setTitle("Chat", forState: .Normal)
        button.backgroundColor = UIColor.redColor()
        self.view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.goToChat), forControlEvents: .TouchUpInside)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func goToChat(){
        print("go to chat")
        
        Qiscus.style.color.leftBaloonColor = UIColor.blueColor()
        Qiscus.style.color.rightBaloonColor = UIColor.greenColor()
        
        Qiscus.chat(withUsers: ["e2@qiscus.com"], target: self)
        
    }


}

