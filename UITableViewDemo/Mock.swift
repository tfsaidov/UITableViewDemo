//
//  Mock.swift
//  UITableViewDemo
//
//  Created by Саидов Тимур on 09.06.2022.
//

import Foundation

struct Mock {
    
    static let shared = Mock()
    
    private init() {}
    
    let data: [Article] = [
        Article(title: "The Quickest Way to Cancel Spotify Premium and Delete Your Account",
                description: "Spotify is the leading ..."),
        Article(title: "The Quickest Way to Cancel Spotify Premium and Delete Your Account",
                description: "Spotify is the leading music streaming service, but its Premium membership might not be for everyone. Maybe you have a better deal with Apple Music or Amazon Prime Music. Maybe you don’t want to support Spotify because of the Joe Rogan fiasco. No matter your"),
        Article(title: "Your iPhone\'s Alarm Doesn\'t Have to Be so Annoying",
                description: "We all know the iPhone’s alarm is anything but a gentle wake-up. “Radar,” as the alert tone is called, is abrasive, startling, and unforgiving. In contrast with the competition, Samsung in particular, it seems Apple ..."),
        Article(title: "The Easiest, Cheapest Way to Train by Heart Rate",
                description: "With fitness watches becoming more popular over the years, training by heart rate has gotten even more ..."),
        Article(title: "How to Get Excited About Cooking Again",
                description: "I’m not sure if anyone made resolutions this year. The source of most people’s problems are not tied to anything they can change with enough resolve. One cannot resolve their way out of a pandemic, or resolve their child into a safe learning environment ..."),
        Article(title: "The free trial of Apple Music was quietly reduced to a single month",
                description: "Since its debut in 2015, Apple Music has offered one of the more generous free trial periods in the streaming industry. As a first-time subscriber, you could use the platform to listen to music for free for up to three months before the company asked you to ..."),
        Article(title: "Apple\'s latest iOS and macOS updates fix a major web security flaw",
                description: "You\'ll want to update your Apple devices soon if you value up-to-the-minute software ..."),
        Article(title: "Apple Watch Series 7 models are up to 15 percent off at Amazon",
                description: "If you\'ve been waiting for a decent deal on an Apple Watch Series 7\r\n, now might be the time to take the leap. You can get up to $60 (as much as 15 percent) off the smartwatch at Amazon at ..."),
        Article(title: "Why You Should Stop ‘Gamifying’ Your Health and Fitness",
                description: "Whenever there’s a task you don’t want to do, there’s a guaranteed way to feel worse about it: Just add a whole layer of guilt and disappointment on top. Streaks that you’ll inevitably break, badges you don’t care about, check-in notifications that bug you ..."),
        Article(title: "The Morning After: Apple closes education discount loophole",
                description: "Apple has finally closed a loophole in the US that allowed most buyers to claim education pricing, even ..."),
        Article(title: "Safari exploit can leak browser histories and Google account info",
                description: "Apple device users appear to be vulnerable to a significant browser privacy flaw. According to 9to5Mac, FingerprintJS has disclosed an exploit that lets attackers obtain your recent browser history, and even some Google account info, from Safari 15 across all ..."),
        Article(title: "Apple\'s digital car keys may work with Hyundai and Genesis models this summer",
                description: "Apple\'s digital car key feature might soon be useful for unlocking more than a handful of BMW models. In his latest newsletter, Bloomberg\'s Mark Gurman claimed Hyundai and its upscale Genesis badge will support Apple CarKey ..."),
        Article(title: "Apple’s App Store now permits unlisted apps", description: "Apple has introduced a new feature that could help declutter the App Store somewhat. Per support documentation spotted by MacRumors, the marketplace now supports unlisted apps that users can only access through a direct link. Should a developer feel their ...")
    ]
}
