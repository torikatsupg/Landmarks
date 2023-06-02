//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by torii katsuya on 2023/06/03.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    var angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: Angle(degrees: 5))
    }
}
