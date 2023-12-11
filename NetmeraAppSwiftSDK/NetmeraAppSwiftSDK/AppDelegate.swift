//
//  AppDelegate.swift
//  NetmeraAppSwiftSDK
//
//  Created by Elif Yürektürk on 24.11.2023.
//

import UIKit
import NetmeraAnalytic
import NetmeraNotification
import NetmeraLocation
import NetmeraNotificationInbox
import NetmeraAdvertisingId

@main
class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {
    
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        //in didFinishLaunchingWithOptions
        // ‼️ Implement UNUserNotificationCenterDelegate methods in AppDelegate
        UNUserNotificationCenter.current().delegate = self
        // Override point for customization after application launch.
        Netmera.initialize()
//        Netmera.requestPushNotificationAuthorization(for: [.alert, .badge, .sound])
        Netmera.setLogLevel(.debug)
        
        
        return true
    }
    
    // MARK: UISceneSession Lifecycle
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    

    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void)
    {
    //NetmeraPushObject(dictionary: response.notification.request.content.userInfo)
    //object.alert.body                  //Push Text
    //object.alert.title                 //Push Title
    //object.action.deeplinkURL          //Push Deeplink
    //object.customDictionary            //Custom JSON
    }
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void)
    {
    //Netmera.recentPushObject()?.alert.body                  //Push Text
    //Netmera.recentPushObject()?.alert.title                 //Push Title
    //Netmera.recentPushObject()?.action.deeplinkURL          //Push Deeplink
    //Netmera.recentPushObject()?.customDictionary            //Custom JSON
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
            completionHandler(.alert)
            }
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data)
    {}
    
    
}
