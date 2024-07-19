// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/

import Foundation

// This class contains the Firefox iOS shadow styles as part of our design system.
public struct FXShadowStyles {
// TODO: Make ticket for adding a convenience method to layer multiple shadows on a single view.
//    public static let Shadow100 = [
//        ShadowStyling(blur: 1, xOffset: 0, yOffset: 3),
//        ShadowStyling(blur: 8, xOffset: 0, yOffset: 8),
//    ]
    public static let Shadow200 = ShadowStyling(blur: 14, xOffset: 0, yOffset: 2)
    public static let Shadow300 = ShadowStyling(blur: 64, xOffset: 0, yOffset: 8)
}
