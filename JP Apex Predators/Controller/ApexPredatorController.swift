//
//  ApexPredatorController.swift
//  JP Apex Predators
//
//  Created by python on 01/11/23.
//

import Foundation

class ApexPredatorController{
    
    var apexPredator: [ApexPredator] = []
    
    init(){
        decodeApexPredatorData()
    }
    
    func decodeApexPredatorData(){
        
        if  let url = Bundle.main.url(forResource: "jpapexpredators", withExtension: "json") {
            
            do {
                
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                apexPredator = try decoder.decode([ApexPredator].self, from: data)
                
            } catch {
                print("Error Decoding JSON Data: \(error)")
            }
        }
    }
    
}
