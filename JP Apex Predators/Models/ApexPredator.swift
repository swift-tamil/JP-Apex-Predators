//
//  ApexPredator.swift
//  JP Apex Predators
//
//  Created by python on 01/11/23.
//

import Foundation


struct ApexPredator: Codable {
    
    let id: Int
    let name: String
    let type: String
    let movies: [String]
    let movieScenes: [MovieScene]
    let links: String
    
}

struct MovieScene: Codable{
    
    let id: Int
    let name: String
    let sceneDiscription: String
    
}
