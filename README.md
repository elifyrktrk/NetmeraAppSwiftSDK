# NetmeraAppSwiftSDK

# HomePage

When you enter the application, you will see the following screen. This page contains buttons to test Netmera's features.
<img src="https://github.com/elifyrktrk/NetmeraAppSwiftSDK/assets/36786466/16c14d5e-4b89-49dc-9fba-c2ae15a8663a" alt="Home Page" width="200" height="400">

1. **Register Push**
   ```swift
   Netmera.requestPushNotificationAuthorization(for: [.alert, .badge, .sound])
