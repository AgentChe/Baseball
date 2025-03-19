//
//  GradientBackgorund.swift
//  SportCards
//
//  Created by Vitaliy Zagorodnov on 10.10.2024.
//

import SwiftUI

struct GradientBackgorund: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(
                Color.black
                    .overlay(alignment: .topTrailing, content: {
                        Circle()
                            .fill(Appearance.main500)
                            .opacity(0.5)
                            .frame(width: 407.scale, height: 407.scale)
                            .alignmentGuide(.top, computeValue: {  dimension in
                                dimension[.top] + 43.scale
                            })
                            .alignmentGuide(.trailing, computeValue: { dimension in
                                dimension[.trailing] - 149.scale
                            })
                            .blur(radius: 150)
                    })
                    .overlay(alignment: .topLeading, content: {
                        Circle()
                            .fill(Appearance.main100)
                            .opacity(0.56)
                            .frame(width: 407.scale, height: 407.scale)
                            .alignmentGuide(.top, computeValue: {  dimension in
                                dimension[.top] + 43.scale
                            })
                            .alignmentGuide(.leading, computeValue: { dimension in
                                dimension[.leading] + 147.scale
                            })
                            .blur(radius: 180)
                    })
                    .ignoresSafeArea()
            )
    }
}

extension View {
    func gradientBackground() -> some View {
        modifier(GradientBackgorund())
    }
}

#Preview(body: {
    VStack {
        Spacer()
    }
    .frame(maxWidth: .infinity)
    .gradientBackground()
})
