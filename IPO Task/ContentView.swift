//
//  ContentView.swift
//  IPO Task
//
//  Created by Leo Lu on 2021-12-11.
//

import SwiftUI

struct ContentView: View {
    @State var inputUnit: String = ""
    @State var currentUnit: Unit = listOfUnits.randomElement()!
    @State var isAnswerShowing = false
    var body: some View {
        NavigationView{
            VStack{
                Image("Image1")
                    .resizable()
                    .scaledToFit()
                
                Text("Short Form Input")
                .font(.headline)
                
                TextField("Parental Unit", text: $inputUnit, prompt: Text("Enter the short form"))
                
                Button(action: {
                    withAnimation {
                        if inputUnit == currentUnit.translation {
                            isAnswerShowing = true
                        }
                    }
                }, label: {
                    Text("Check")
                })
                    .buttonStyle(.bordered)
                
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
