//
//  Movie.swift
//  Quick-Nimble Example
//
//  Created by Fomagran on 2021/08/30.
//

import Foundation

struct Movie {
    var title: String
    var genre: Genre
    
    func genreString() -> String {
        switch genre {
        case .Action:
            return "Action"
        case .Animation:
            return "Animation"
        default:
            return "None"
        }
    }
}
