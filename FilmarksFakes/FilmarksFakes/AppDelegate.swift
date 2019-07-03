//
//  AppDelegate.swift
//  FilmarksFakes
//
//  Created by 1st-impact on 2019/06/27.
//  Copyright © 2019 S4ch1mos. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        //スプリットビューコントローラーを取得する。
        let tabBarViewController = self.window!.rootViewController as! UITabBarController

        let splitViewController = tabBarViewController.viewControllers?.last as! UISplitViewController

        //マスター部のテーブルビューコントローラーを取得する。
        let masterNavController = splitViewController.viewControllers.first as! UINavigationController
        let masterViewController = masterNavController.topViewController as! TestTableViewController

        //ディテール部のビューコントローラーを取得する。
        let detailNavController = splitViewController.viewControllers.last as! UINavigationController
        let detailViewController = detailNavController.topViewController

        //起動時の画面モードからボタンを追加するかどうかを決める。
        if(splitViewController.displayMode == UISplitViewController.DisplayMode.primaryHidden) {

            //新しいボタンは戻るボタンの横に追加されるように設定する。
            masterViewController.navigationItem.leftItemsSupplementBackButton = true
            
            //ボタンを作成する。
            let closeButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.rewind, target: splitViewController.displayModeButtonItem.target, action: splitViewController.displayModeButtonItem.action)


            //マスター部のナビゲーションバーの左ボタンに画面モードの切り替えボタンを追加する。
            masterViewController.navigationItem.leftBarButtonItem = closeButton

            //新しいボタンは戻るボタンの横に追加されるように設定する。
            detailViewController?.navigationItem.leftItemsSupplementBackButton = true

            //ボタンを作成する。
            let openButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.fastForward, target: splitViewController.displayModeButtonItem.target, action: splitViewController.displayModeButtonItem.action)

            //ディテール部のナビゲーションバーの左ボタンに画面モードの切り替えボタンを設定する。
            detailViewController?.navigationItem.leftBarButtonItem = openButton

        }

        //マスター部のデリゲート先にディテール部のビューコントローラーを設定する。
        masterViewController.delegate = detailViewController as? TestTableViewControllerDelegate

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

