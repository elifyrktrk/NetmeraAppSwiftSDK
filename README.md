# NetmeraAppSwiftSDK

Our documents
Developer Guide : https://user.netmera.com/netmera-developer-guide/
User Guide : https://user.netmera.com/netmera-user-guide/


# HomePage

When you enter the application, you will see the following screen. This page contains buttons to test Netmera's features.
<img src="https://github.com/elifyrktrk/NetmeraAppSwiftSDK/assets/36786466/16c14d5e-4b89-49dc-9fba-c2ae15a8663a" alt="Home Page" width="200" height="350">

1. Register Push > for request notification permission from users
   ```swift
   Netmera.requestPushNotificationAuthorization(for: [.alert, .badge, .sound])
<img src="https://github.com/elifyrktrk/NetmeraAppSwiftSDK/assets/36786466/8a19159f-b2af-4c37-abc2-4415d199cac0" alt="Request Push Notification" width="200" height="350">

2. Push Enable 
   ```swift
   Netmera.setEnabledReceivingPushNotifications(true)

3. Push Disable
   ```swift
   Netmera.setEnabledReceivingPushNotifications(false)

4. Update User > To update information for a user
   ```swift
   var user = NetmeraUser()
        user.userId = "elif"
        user.name = "name"
        user.surname = "surname"
        user.email = "email"
        Netmera.updateUser(user: user)

5. Location > Permission is required to send specific pushes to a user's location.
   ```swift
   Netmera.requestLocationAuthorization()
   ```
   <img src="https://github.com/elifyrktrk/NetmeraAppSwiftSDK/assets/36786466/b48e8426-2d2b-425f-baee-052136c2e359" alt="Location Permission" width="200" height="350">

6. Send Event > You can fire an event to keep track of a user's actions.
   ```swift
   let event = NetmeraLoginEvent(userId: "user_id")
   Netmera.send(event)

7. Push Inbox > If you want to list the user's notifications on a page within the application, you can fetch them from Netmera.
   ```swift
   //1. Define inbox manager
   //2. Create filter for fetching inbox
   let filter = NetmeraInboxFilter(status: .all,
                                        pageSize: 10,
                                        shouldIncludeExpiredObjects: true                                
        )
        // 3. Crete inbox manager instance
        self.inboxManager = Netmera.inboxManager(with: filter)
        inboxManager?.inbox(callback: { result in
            // List inbox
        })

8. AdId 
   ```swift
   Netmera.requestAdvertisingAuthorization()

9. Enable Popup/Widget/Banner
    
   <img src="https://github.com/elifyrktrk/NetmeraAppSwiftSDK/assets/36786466/62b07616-9202-465c-b31d-f6299ba75f4f"
 alt="Widget" width="200" height="350">
 
   ```swift
   Netmera.setEnabledPopupPresentation(true)// to enable showing popup and widget push
   Netmera.setEnabledInAppMessagePresentation(true) // to enable showing banner push
   
11. Disable Popup/Widget/Banner
 
   ```swift
    Netmera.setEnabledPopupPresentation(false) // to disable showing popup and widget push
    Netmera.setEnabledInAppMessagePresentation(false) // to disable showing banner push
