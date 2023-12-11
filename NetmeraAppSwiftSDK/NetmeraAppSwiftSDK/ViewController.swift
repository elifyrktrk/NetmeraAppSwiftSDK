//
//  ViewController.swift
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



class ViewController: UIViewController {
    
    var  inboxManager: NetmeraInboxManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func btnRegisterPush(_ sender: Any) {
        Netmera.requestPushNotificationAuthorization(for: [.alert, .badge, .sound])
    }
    @IBAction func btnPushEnable(_ sender: Any) {
        Netmera.setEnabledReceivingPushNotifications(true)
    }
    
    @IBAction func btnPushDisable(_ sender: Any) {
        Netmera.setEnabledReceivingPushNotifications(false)
    }
    
    
    @IBAction func btnUpdateUser(_ sender: Any) {
        var user = NetmeraUser()
        user.userId = "elif"
        user.name = "name"
        user.surname = "surname"
        user.email = "email"
        Netmera.updateUser(user: user)
    }
    
    @IBAction func btnLocation(_ sender: Any) {
        Netmera.requestLocationAuthorization()
    }
    
    @IBAction func btnSendEvent(_ sender: Any) {
        let event = NetmeraLoginEvent(userId: "user_id")
        Netmera.send(event)
    }
    
    @IBAction func btnPushInbox(_ sender: Any) {
//         1. Define inbox manager
//         2. Create filter for fetching inbox

        let filter = NetmeraInboxFilter(status: .all,
                                        pageSize: 10,
                                        shouldIncludeExpiredObjects: true
                                        
        )
        // 3. Crete inbox manager instance
        self.inboxManager = Netmera.inboxManager(with: filter)
    
        inboxManager?.inbox(callback: { result in
            // List inbox
        })
    }
    
                            
    @IBAction func btnAdId(_ sender: Any) {
        Netmera.requestAdvertisingAuthorization()
    }
    
    
    @IBAction func btnEnablePopupWidget(_ sender: Any) {
        Netmera.setEnabledPopupPresentation(true)// to enable showing popup and widget push
        Netmera.setEnabledInAppMessagePresentation(true) // to enable showing banner push
    }
    
    @IBAction func btnDisablePopupWidget(_ sender: Any) {
        Netmera.setEnabledPopupPresentation(false) // to disable showing popup and widget push
        Netmera.setEnabledInAppMessagePresentation(false) // to disable showing banner push
    }
}

