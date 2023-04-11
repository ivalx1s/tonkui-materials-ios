#if canImport(UIKit)
import UIKit
import SwiftUI

// To initialize color with color-literal, use the following trick:
// start typing the color initialization and stop on opening brace
// let color: UIColor = #colorLiteral(
// and then provide the color through macOS color picker
// 'other' -> 'color sliders' -> 'RGB Sliders' -> 'Hex Color'
// or double tap the color box to inspect or modify

// MARK: - Tonkeeper Dynamic Colors
@available(iOS 14.0, tvOS 14.0, watchOS 7.0, macOS 11, *)
public extension Color {
	static var tonBlue: Color {
		let light:   UIColor = #colorLiteral(red: 0.4980392157, green: 0.7843137255, blue: 0.9411764706, alpha: 1) // not explicitly set in design, educated guess
		let lightHC: UIColor = #colorLiteral(red: 0.007843137255, green: 0.4509803922, blue: 0.6901960784, alpha: 1) // not explicitly set in design, educated guess
		let dark:    UIColor = #colorLiteral(red: 0.2705882353, green: 0.6823529412, blue: 0.9607843137, alpha: 1)
		let darkHC:  UIColor = #colorLiteral(red: 0.1411764706, green: 0.5294117647, blue: 0.8156862745, alpha: 1) // not explicitly set in design, educated guess
		return .init(
			light:   light,
			lightHC: lightHC,
			dark:    dark,
			darkHC:  darkHC
		)
	}
	
	/// The color for the main background of Tonkeeper interface.
	static var tonSystemBackground: Color {
		let light:        UIColor = #colorLiteral(red: 0.9294117647, green: 0.9294117647, blue: 0.9294117647, alpha: 1) // not explicitly set in design, educated guess
		let darkBase:     UIColor = #colorLiteral(red: 0.06274509804, green: 0.0862745098, blue: 0.1215686275, alpha: 1)
		let darkElevated: UIColor = #colorLiteral(red: 0.1098039216, green: 0.1529411765, blue: 0.1921568627, alpha: 1) // not explicitly set in design, educated guess
		return .init(
			light:        light,
			darkBase:     darkBase,
			darkElevated: darkElevated
		)
	}
	
	static var tonSecondarySystemBackground: Color {
		let light:        UIColor = #colorLiteral(red: 0.6980392157, green: 0.7294117647, blue: 0.7764705882, alpha: 1) // not explicitly set in design, educated guess
		let darkBase:     UIColor = #colorLiteral(red: 0.1803921569, green: 0.2196078431, blue: 0.2784313725, alpha: 1)
		let darkElevated: UIColor = #colorLiteral(red: 0.2352941176, green: 0.2862745098, blue: 0.3764705882, alpha: 1) // not explicitly set in design, educated guess
		return .init(
			light:        light,
			darkBase:     darkBase,
			darkElevated: darkElevated
		)
	}

	
	/// The color for content layered on top of the main Tonkeeper background.
	static var tonSystemGroupedBackground: Color {
		let light:        UIColor = #colorLiteral(red: 0.6509803922, green: 0.6784313725, blue: 0.7254901961, alpha: 1) // not explicitly set in design, educated guess
		let darkBase:     UIColor = #colorLiteral(red: 0.1137254902, green: 0.1490196078, blue: 0.2, alpha: 1)
		let darkElevated: UIColor = #colorLiteral(red: 0.1647058824, green: 0.2, blue: 0.2509803922, alpha: 1) // not explicitly set in design, educated guess
		return .init(
			light:        light,
			darkBase:     darkBase,
			darkElevated: darkElevated
		)
	}
	
	
	static var blueTon: Color {
		let light:   UIColor = #colorLiteral(red: 0.4705882353, green: 0.5176470588, blue: 0.5921568627, alpha: 1) // not explicitly set in design, educated guess
		let lightHC: UIColor = #colorLiteral(red: 0.1647058824, green: 0.2274509804, blue: 0.3137254902, alpha: 1) // not explicitly set in design, educated guess
		let dark:    UIColor = #colorLiteral(red: 0.1137254902, green: 0.1490196078, blue: 0.2, alpha: 1)
		let darkHC:  UIColor = #colorLiteral(red: 0.05882352941, green: 0.0862745098, blue: 0.1411764706, alpha: 1) // not explicitly set in design, educated guess
		return .init(
			light:   light,
			lightHC: lightHC,
			dark:    dark,
			darkHC:  darkHC
		)
	}
}
#endif


#if canImport(UIKit)
@available(iOS 14.0, tvOS 14.0, watchOS 7.0, macOS 11, *)
internal extension Color {
#if DEBUG
	static var debugDynamicColor: Color {
		.init(
			light:   .init(hex: 0xff0048),
			lightHC: .init(hex: 0x0091ff),
			dark:    .init(hex: 0xffdd00),
			darkHC:  .init(hex: 0xff5e00)
		)
	}
#endif
}
#endif
