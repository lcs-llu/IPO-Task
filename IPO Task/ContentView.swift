//
//  ContentView.swift
//  IPO Task
//
//  Created by Leo Lu on 2021-12-11.
//

import SwiftUI

struct ContentView: View {
    @State var inputUnit: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                Image("Image1")
                    .resizable()
                    .scaledToFit()
                
                Text("Short Form Input")
                .font(.headline)
                
                TextField("Parental Unit", text: $inputUnit, prompt: Text("short form"))
                
                
                Spacer()
            }
            .padding()
            .navigationTitle("Parental Unit Translation Device")
        }
        
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
