//
//  ContentView.swift
//  ScrollView
//
//  Created by Lucas Neves dos santos pompeu on 07/11/23.
//

import SwiftUI

struct ContentView: View {
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
                LazyHStack(spacing: 15.0){
                    ForEach(0..<26) { index in
                        Text("Posição -> \(index)")
                            .frame(height: 45)
                            .background(Color.blue)
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
