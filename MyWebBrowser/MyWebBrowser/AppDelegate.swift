//
//  AppDelegate.swift
//  MyWebBrowser
//
//  Created by 박영광 on 04/04/2020.
//  Copyright © 2020 박영광. All rights reserved.
//

import UIKit

/// 마지막 페이지 주소를 userDefaults에서 관리하기 위한 키 값
let lastPageURLDefualtKey: String = "lastURL"

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: - Properies
    var window: UIWindow?
    var lastPageURL: URL?
    
    // MARK: - Methods
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.lastPageURL = UserDefaults.standard.url(forKey: lastPageURLDefualtKey)
        
        return true
    }

    // MARK: UISceneSession Lifecycle
    
    func applicationWillResignActive(_ application: UIApplication) {
        let userDefaults: UserDefaults
        userDefaults = UserDefaults.standard
        
        userDefaults.set(self.lastPageURL, forKey: lastPageURLDefualtKey)
        userDefaults.synchronize()
    }
    
}

