//
//  ContentView.swift
//  sparrowcode5
//
//  Created by Artem Dragunov on 11.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            Rectangle()
                .fill(.white)
            Rectangle()
                .fill(.pink)
            Rectangle()
                .fill(.yellow)
            Rectangle()
                .fill(.black)
            
        }
        .padding(0)
    
    }
}

#Preview {
    ContentView()
}
