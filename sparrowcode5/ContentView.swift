//
//  ContentView.swift
//  sparrowcode5
//
//  Created by Artem Dragunov on 11.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var offset: CGSize = .zero
    
    var body: some View {
        ZStack {
            VStack  (spacing:0) {
                Color.white
                    .edgesIgnoringSafeArea(.all)
                
                Color.pink
                
                Color.yellow
                
                Color.black
                    .edgesIgnoringSafeArea(.all)
            }
            
            
            
            Rectangle()
                .fill(Color.white)
                .frame(width: 100, height: 100)
                .offset(offset)
                .blendMode(.exclusion)
                .gesture(DragGesture()
                    .onChanged { value in
                        self.offset = value.translation
                    }
                    .onEnded { _ in
                        self.offset = .zero
                    }
                )
        }
    }
}


#Preview {
    ContentView()
}
