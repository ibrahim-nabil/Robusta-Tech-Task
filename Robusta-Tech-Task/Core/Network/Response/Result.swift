//
//  Result.swift
//  Robusta-Tech-Task
//
//  Created by ibrahim nabil on 27/04/2022.
//

import Foundation

enum Result<T, U> where U: Error {
    case success(T)
    case failure(U)
}
