// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/

import UIKit

// This class should only be instantiated in FXShadowStyles.
public struct ShadowStyling {
    fileprivate let shadowRadius: CGFloat
    fileprivate let shadowOffset: CGSize
    
    public var blur: CGFloat {
        return shadowRadius
    }

    // When theming a shadow, always set CALayer's shadowOpactiy to 1.0, then set its shadowColor using a given
    // Theme's colors. A Theme's shadowColor will handle the opacity.
    fileprivate let shadowOpacity: Float = 1.0

    init(blur: CGFloat, xOffset: CGFloat, yOffset: CGFloat) {
        self.shadowRadius = blur
        self.shadowOffset = CGSize(width: xOffset, height: yOffset)
    }
}

extension CALayer {
    // Helper method to apply ShadowStyling to a view's CALayer for a given Theme. Sets masksToBounds = false.
    public func addShadow(withStyling styling: ShadowStyling) {
        shadowRadius = styling.shadowRadius
        shadowOpacity = styling.shadowOpacity
        shadowOffset = styling.shadowOffset

        masksToBounds = false
    }

    public func applyShadowColor(forTheme theme: Theme) {
        shadowColor = theme.colors.shadowSubtle.cgColor
    }
}
