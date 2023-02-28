import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kFigtreeSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kFigtreeSemiBold, size: size)
    }

    static func kFigtreeRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kFigtreeRegular, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kFigtreeSemiBold":
            result = self.kFigtreeSemiBold(size: size)
        case "kFigtreeRegular":
            result = self.kFigtreeRegular(size: size)
        default:
            result = self.kFigtreeSemiBold(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kFigtreeSemiBold: String = "Figtree-SemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kFigtreeRegular: String = "Figtree-Regular"
    }
}
