//
//  DiscoApp.swift
//  Disco
//
//  Created by Ethan McRae on 7/24/23.
//

import SwiftUI
import UserNotifications
import UIKit

@main
struct TestApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        UNUserNotificationCenter.current().delegate = self
        registerCategories()
        requestNotificationAuthorization(application: application)
        
        return true
    }

    private func registerCategories() {
        let messageActionID = "com.example.MessageAction"
        let messageAction = UNNotificationAction(identifier: messageActionID, title: "Reply", options: [])
        let messageCategory = UNNotificationCategory(identifier: "MESSAGE_CATEGORY", actions: [messageAction], intentIdentifiers: [], options: [])

        UNUserNotificationCenter.current().setNotificationCategories([messageCategory])
    }

    private func requestNotificationAuthorization(application: UIApplication) {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            guard granted else { return }

            DispatchQueue.main.async {
                application.registerForRemoteNotifications()
            }
        }
    }

    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let tokenParts = deviceToken.map { data in String(format: "%02.2hhx", data) }
        let token = tokenParts.joined()
//        print("Device Token: \(token)")
    }
    
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        // TODO: Add a visual popup on the device to inform the user of this error
        print("Failed to register for remote notifications: \(error.localizedDescription)")
    }

    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        guard response.actionIdentifier == "com.apple.UNNotificationDefaultActionIdentifier" else {
            // Not our custom action
            // TODO: Look into this more. Test edge cases. Then create an informational visual popup for the user.
            print("Invalid Action ID: \(response.actionIdentifier)")
            return
        }

        // Extract original notification payload
        let notePayload = response.notification.request.content.userInfo

        guard let service = notePayload["service"] as? String,
              let message = notePayload["message"] as? String,
              let recipient = notePayload["recipient"] as? [String: Any] else {
            return
        }
        
        switch service {
        case "iMessage":
            // TODO: Determine if Apple will consider this bad: To automatically open a message (an automatic redirect).
            let phoneNumber = recipient["id"] as! String
            // TODO: Remove this line and the ContactManager file in the future if this is never used.
            // Update: I don't think I'll need contacts on the frontend as the backend should have them from the iMessage parser.
            let contactName = ContactManager.shared.getContactName(phoneNumber: phoneNumber)

            MessageHelper.openMessageWithPretypedMessage(recipient: recipient, message: message)

            break

        default:
            break
        }
        
        completionHandler()
    }
}
