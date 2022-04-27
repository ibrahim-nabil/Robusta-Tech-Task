//
//  EndPoint.swift
//  Robusta-Tech-Task
//
//  Created by ibrahim nabil on 27/04/2022.
//

import Foundation

protocol Endpoint {
    var base: String { get }
    var path: String { get }
}

extension Endpoint {
    var urlComponents: URLComponents {
        var components = URLComponents(string: base)!
        components.path = path
        return components
    }
    var request: URLRequest {
        let url = urlComponents.url!
        return URLRequest(url: url)
    }
}

enum RepositoriesFeed {
    case currenRpos
}

extension RepositoriesFeed: Endpoint {
    var base: String {
        return "https://api.github.com"
    }
    var path: String {
        switch self {
        case .currenRpos: return "/repositories"
        }
    }
}
