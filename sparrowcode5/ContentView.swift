//
//  ContentView.swift
//  sparrowcode5
//
//  Created by Artem Dragunov on 11.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var rectangleCornerRadius: CGFloat = 12
    @State private var position: CGSize = .zero
    
    
    var body: some View {
        ZStack {
            VStack  (spacing:0) {
                Color.white
                Color.pink
                Color.yellow
                Color.black
            }
            .edgesIgnoringSafeArea(.all)
            
            
            ZStack {
                RoundedRectangle(cornerRadius: rectangleCornerRadius)
                    .fill(Color.white)
                    .blendMode(.difference)
                
                RoundedRectangle(cornerRadius: rectangleCornerRadius)
                    .fill(Color.white)
                    .blendMode(.color)
                
                RoundedRectangle(cornerRadius: rectangleCornerRadius)
                    .fill(Color.white)
                    .blendMode(.overlay)
                
                RoundedRectangle(cornerRadius: rectangleCornerRadius)
                    .fill(Color.black)
                    .blendMode(.overlay)
                
            }
            .frame(width: 100, height: 100)
            .offset(position)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        self.position = value.translation
                    }
                    .onEnded { value in
                        self.position = .zero
                    }
            )
        }
    }
}


#Preview {
    ContentView()
}
