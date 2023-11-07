//
//  ContentView.swift
//  ScrollView
//
//  Created by Lucas Neves dos santos pompeu on 07/11/23.
//

import SwiftUI

struct Person: Identifiable {
    let id = UUID()
    let name: String
    let age: Int
}

struct ContentView: View {
    
    @State var selectedPosition: UUID? = nil
    
    var list: [Person] = [
        Person(name: "Caio", age: 21),
        Person(name: "Felipe", age: 33),
        Person(name: "Lucas", age: 26),
    ]
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack(spacing: 15.0){
                    ForEach(0..<26) { index in
                        Text("Posição -> \(index)")
                            .frame(maxWidth: .infinity)
                            .frame(height: 45)
                            .background(Color.green)
                    }
                }
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 15.0) {
                    //                    ForEach(0..<26) { index in
                    //                        Text("Posição -> \(index)")
                    //                            .frame(height: 45)
                    //                            .background(selectedPosition == index ? Color.red : Color.blue)
                    //                            .onTapGesture {
                    //                                print("Clicou na posição \(index)")
                    //                                selectedPosition = index
                    //                            }
                    //                    }
                    ForEach(list) { person in
                        Text("Nome -> \(person.name)")
                            .frame(height: 45)
                            .background(selectedPosition == person.id ? Color.red : Color.blue)
                            .onTapGesture {
                                print("Clicou no nome: \(person.name)")
                                selectedPosition = person.id
                            }
                        }
                    }
                }.frame(height: 60)
            }
            .padding()
        }
    }
#Preview {
    ContentView()
}
