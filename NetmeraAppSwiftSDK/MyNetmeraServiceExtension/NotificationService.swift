//
//  NotificationService.swift
//  MyNetmeraServiceExtension
//
//  Created by Elif Yürektürk on 24.11.2023.
//

import UserNotifications
import NetmeraNotificationServiceExtension

class NotificationService: NotificationServiceExtension {
  override func didReceive(_ request: UNNotificationRequest, withContentHandler contentHandler: @escaping (UNNotificationContent) -> Void) {
    super.didReceive(request, withContentHandler: contentHandler)
  }

  override func serviceExtensionTimeWillExpire() {
    super.serviceExtensionTimeWillExpire()
  }
}
