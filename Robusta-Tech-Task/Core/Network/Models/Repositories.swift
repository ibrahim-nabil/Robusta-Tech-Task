//
//  Repositories.swift
//  Robusta-Tech-Task
//
//  Created by ibrahim nabil on 27/04/2022.
//

import Foundation

// MARK: - Repositories
struct Repositories: Codable , Equatable{
    let id: Int?
    let name: String?
    let owner: Owner?
    let description: String?
}

// MARK: - Owner
struct Owner: Codable, Equatable {
    let login: String?
    let id: Int?
    let avatarURL: String?
    let followingURL, gistsURL, starredURL: String?
    let subscriptionsURL, organizationsURL, reposURL: String?
    let eventsURL: String?
    let receivedEventsURL: String?
    let siteAdmin: Bool?

    enum CodingKeys: String, CodingKey {
        case login, id
        case avatarURL = "avatar_url"
        case followingURL = "following_url"
        case gistsURL = "gists_url"
        case starredURL = "starred_url"
        case subscriptionsURL = "subscriptions_url"
        case organizationsURL = "organizations_url"
        case reposURL = "repos_url"
        case eventsURL = "events_url"
        case receivedEventsURL = "received_events_url"
        case siteAdmin = "site_admin"
    }
}
