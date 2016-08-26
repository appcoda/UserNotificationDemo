//
//  ViewController.swift
//  NotificationDemo
//
//  Created by Peter Pan on 8/15/16.
//  Copyright © 2016 Peter Pan. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController, UIPickerViewDelegate {
    
    @IBAction func createNotification(_ sender: AnyObject) {
    
        let content = UNMutableNotificationContent()
        content.title = "體驗過了，才是你的。"
        content.subtitle = "米花兒"
        content.body = "不要追問為什麼，就笨拙地走入未知。感受眼前的怦然與顫抖，聽聽左邊的碎裂和跳動。不管好的壞的，只有體驗過了，才是你的。"
        content.badge = 1
        content.sound = UNNotificationSound.default()
        content.categoryIdentifier = "luckyMessage"

        let imageURL = Bundle.main.url(forResource: "pic", withExtension: "jpg")
        let attachment = try! UNNotificationAttachment(identifier: "", url: imageURL!, options: nil)
        content.attachments = [attachment]
        content.userInfo = ["link":"https://www.facebook.com/himinihana/photos/a.104501733005072.5463.100117360110176/981809495274287"]

        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        let request = UNNotificationRequest(identifier: "notification1", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
       
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

