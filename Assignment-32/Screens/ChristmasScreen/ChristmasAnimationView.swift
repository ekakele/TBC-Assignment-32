//
//  ChristmasAnimationView.swift
//  Assignment-32
//
//  Created by Eka Kelenjeridze on 24.12.23.
//

import SwiftUI
import EffectsLibrary

struct ChristmasAnimationView: View {
    // MARK: - Properties
    @State private var isAnimated: Bool = false
    
    // MARK: - Body
    var body: some View {
        VStack {
            ZStack {
                effectsComboFromLibrary
                ChristmasTreeView()
                gradientAnimationTextTBC
            }
            Spacer()
                .frame(height: 100)
            
        }
        .background(Color.black)
        .onAppear() {
            self.isAnimated.toggle()
        }
    }
    
    private var effectsComboFromLibrary: some View {
        ZStack {
            FireworksView()
            SnowView()
        }
    }
    
    private var gradientAnimationTextTBC: some View {
        LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .mask(textTBC)
            .hueRotation(.degrees(isAnimated ? 45 : 0))
            .animation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever(autoreverses: true),
                value: isAnimated
            )
    }
    
    private var textTBC: some View {
        Text("Happy Christmas TBC IT Academy")
            .font(Font.system(size: 22))
            .offset(y: -250)
    }
}

#Preview {
    ChristmasAnimationView()
}
