//
//  ContentView.swift
//  JP Apex Predators
//
//  Created by python on 31/10/23.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Properties
    
    let apController = ApexPredatorController()
    
    //MARK: BODY
    var body: some View {
        
        //MARK: LIST
        NavigationView{
            List{
                ForEach(apController.apexPredator){ predator in
                    NavigationLink(destination: Text("Dino Details go Here")){                        Text(predator.name)
                    }
                }
            }
            .navigationTitle("Apex Predators")
        }
        
        
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
