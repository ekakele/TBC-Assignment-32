//
//  TBCAnimationView.swift
//  Assignment-32
//
//  Created by Eka Kelenjeridze on 24.12.23.
//

import SwiftUI

struct TBCAnimationView: View {
    // MARK: - Properties
    @State private var isAnimated: Bool = false
    @State private var offset: CGSize = CGSize.zero
    
    // MARK: - Body
    var body: some View {
        textTBCWithAnimations
            .opacity(isAnimated ? 1.0 : 0.0)
            .onAppear() {
                self.isAnimated.toggle()
            }
    }
    
    private var textTBCWithAnimations: some View {
        textTBCWithConditionalModifiers
            .animation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever(autoreverses: true),
                value: isAnimated
            )
    }
    
    private var textTBCWithConditionalModifiers: some View {
        textTBC
            .foregroundColor(isAnimated ? Color.red : (isAnimated ? Color.purple : Color.blue))
            .scaleEffect(isAnimated ? 1.5 : 1.0)
            .offset(y: isAnimated ? -50 : 0)
    }
    
    private var textTBC: some View {
        Text("TBC IT Academy")
            .font(Font.system(size: 26))
    }
}

#Preview {
    TBCAnimationView()
}
