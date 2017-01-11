//
//  AppDelegate.swift
//  SampleSDK
//
//  Created by Evan Purnama on 9/14/16.
//  Copyright © 2016 Evan Purnama. All rights reserved.
//

import UIKit
import Qiscus

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, QiscusConfigDelegate {

    var window: UIWindow?
    var navController = UINavigationController()
    var mainView = ViewController()


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let mainView = ViewController()
        let navigationController = UINavigationController(rootViewController: mainView)
        
        
        mainView.showQiscusLoading()
        Qiscus.setup(withAppId: "dragonfly", userEmail: "081212962117@qiscuswa.com", userKey: "26407cd298d88c131ff98d48201312c6", username: "Athaullah", avatarURL: "https://qiscuss3.s3.amazonaws.com/uploads/db5cbfe427dbeca6026d57c047074866/qiscus-dp.png", delegate: self)
        
        //Chat view styling
        Qiscus.style.color.leftBaloonColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
        Qiscus.style.color.welcomeIconColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)
        Qiscus.style.color.leftBaloonTextColor = UIColor.white
        Qiscus.style.color.rightBaloonColor = UIColor(red: 0.3, green: 0.3, blue: 0.3, alpha: 1)
        Qiscus.style.color.rightBaloonTextColor = UIColor.white
        Qiscus.setGradientChatNavigation(UIColor.black, bottomColor: UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1), tintColor: UIColor.white)
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    // MARK: - QiscusConfigDelegate
    func qiscusFailToConnect(_ withMessage:String){
        print(withMessage)
        mainView.dismissQiscusLoading()
    }
    func qiscusConnected(){
        print("Chat server connected")
        mainView.dismissQiscusLoading()
    }
}

