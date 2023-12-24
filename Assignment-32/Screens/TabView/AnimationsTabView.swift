//
//  AnimationsTabView.swift
//  Assignment-32
//
//  Created by Eka Kelenjeridze on 24.12.23.
//

import SwiftUI

struct AnimationsTabView: View {
    // MARK: - Body
    var body: some View {
        TabView {
            TBCAnimationView()
                .tabItem {
                    Image(systemName: "triangle")
                    Text("TBC")
                }
            
            ChristmasAnimationView()
                .tabItem {
                    Image(systemName: "party.popper")
                    Text("Christmas")
                }
        }
    }
}

#Preview {
    AnimationsTabView()
}
