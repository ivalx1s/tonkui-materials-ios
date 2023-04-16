#if canImport(UIKit)
import UIKit
import SwiftUI
import Foundation

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
	
	static var tonListSeparator: Color {
		let light:   UIColor = #colorLiteral(red: 0.6352941176, green: 0.6666666667, blue: 0.7294117647, alpha: 0.24) // not explicitly set in design, educated guess
		let lightHC: UIColor = #colorLiteral(red: 0.09411764706, green: 0.1176470588, blue: 0.1882352941, alpha: 0.24) // not explicitly set in design, educated guess
		let dark:    UIColor = #colorLiteral(red: 0.3098039216, green: 0.3529411765, blue: 0.4392156863, alpha: 0.2432222682)
		let darkHC:  UIColor = #colorLiteral(red: 0.1490196078, green: 0.1803921569, blue: 0.2509803922, alpha: 0.24) // not explicitly set in design, educated guess
		return .init(
			light:   light,
			lightHC: lightHC,
			dark:    dark,
			darkHC:  darkHC
		)
	}
	
	
	static var tonPrimaryLabel: Color {
		let light:   UIColor = #colorLiteral(red: 0.1215686275, green: 0.1215686275, blue: 0.1215686275, alpha: 1) // not explicitly set in design, educated guess
		let lightHC: UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1) // not explicitly set in design, educated guess
		let dark:    UIColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
		let darkHC:  UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) // not explicitly set in design, educated guess
		return .init(
			light:   light,
			lightHC: lightHC,
			dark:    dark,
			darkHC:  darkHC
		)
	}
	
	static var tonSecondaryLabel: Color {
		let light:   UIColor = #colorLiteral(red: 0.768627451, green: 0.7882352941, blue: 0.831372549, alpha: 1) // not explicitly set in design, educated guess
		let lightHC: UIColor = #colorLiteral(red: 0.2509803922, green: 0.2901960784, blue: 0.3607843137, alpha: 1) // not explicitly set in design, educated guess
		let dark:    UIColor = #colorLiteral(red: 0.537254902, green: 0.5803921569, blue: 0.6392156863, alpha: 1)
		let darkHC:  UIColor = #colorLiteral(red: 0.4196078431, green: 0.4784313725, blue: 0.5529411765, alpha: 1) // not explicitly set in design, educated guess
		return .init(
			light:   light,
			lightHC: lightHC,
			dark:    dark,
			darkHC:  darkHC
		)
	}
	
	static var tonTertiaryLabel: Color {
		let light:   UIColor = #colorLiteral(red: 0.5921568627, green: 0.6274509804, blue: 0.6980392157, alpha: 1) // not explicitly set in design, educated guess
		let lightHC: UIColor = #colorLiteral(red: 0.1137254902, green: 0.1529411765, blue: 0.2196078431, alpha: 1) // not explicitly set in design, educated guess
		let dark:    UIColor = #colorLiteral(red: 0.3333333333, green: 0.3803921569, blue: 0.4392156863, alpha: 1)
		let darkHC:  UIColor = #colorLiteral(red: 0.231372549, green: 0.2941176471, blue: 0.3843137255, alpha: 1) // not explicitly set in design, educated guess
		return .init(
			light:   light,
			lightHC: lightHC,
			dark:    dark,
			darkHC:  darkHC
		)
	}
	
	static func tonBalanceRelativeGain(forLocale locale: Locale) -> Color {
		let localeRegion = locale.regionCode
		var light:   UIColor
		var lightHC: UIColor
		var dark:    UIColor
		var darkHC:  UIColor
		switch localeRegion {
			case "zh", "ko":
				light	 = #colorLiteral(red: 1, green: 0.5647058824, blue: 0.6, alpha: 1) // not explicitly set in design, educated guess
				lightHC	 = #colorLiteral(red: 0.7568627451, green: 0, blue: 0.1529411765, alpha: 1) // not explicitly set in design, educated guess
				dark	 = #colorLiteral(red: 1, green: 0.2784313725, blue: 0.4, alpha: 1)
				darkHC	 = #colorLiteral(red: 0.8784313725, green: 0.2156862745, blue: 0.3137254902, alpha: 1) // not explicitly set in design, educated guess
			default:
				light	 = #colorLiteral(red: 0.4941176471, green: 0.8470588235, blue: 0.6901960784, alpha: 1) // not explicitly set in design, educated guess
				lightHC	 = #colorLiteral(red: 0, green: 0.6117647059, blue: 0.2980392157, alpha: 1) // not explicitly set in design, educated guess
				dark	 = #colorLiteral(red: 0.2235294118, green: 0.8, blue: 0.5137254902, alpha: 1)
				darkHC	 = #colorLiteral(red: 0.1411764706, green: 0.7176470588, blue: 0.431372549, alpha: 1) // not explicitly set in design, educated guess
		}
		return .init(
			light:   light,
			lightHC: lightHC,
			dark:    dark,
			darkHC:  darkHC
		)
	}
	
	
	
	/// Locale dependent color for relative financial loses.
	///
	/// In Chinese and Korean cultures red color marks gains and green marls loses.
	static func tonBalanceRelativeLose(forLocale locale: Locale) -> Color {
		let localeRegion = locale.regionCode
		var light:   UIColor
		var lightHC: UIColor
		var dark:    UIColor
		var darkHC:  UIColor
		switch localeRegion {
			case "zh", "ko":
				light	 = #colorLiteral(red: 0.4941176471, green: 0.8470588235, blue: 0.6901960784, alpha: 1) // not explicitly set in design, educated guess
				lightHC	 = #colorLiteral(red: 0, green: 0.6117647059, blue: 0.2980392157, alpha: 1) // not explicitly set in design, educated guess
				dark	 = #colorLiteral(red: 0.2235294118, green: 0.8, blue: 0.5137254902, alpha: 1)
				darkHC	 = #colorLiteral(red: 0.1411764706, green: 0.7176470588, blue: 0.431372549, alpha: 1) // not explicitly set in design, educated guess
			default:
				light	 = #colorLiteral(red: 1, green: 0.5647058824, blue: 0.6, alpha: 1) // not explicitly set in design, educated guess
				lightHC	 = #colorLiteral(red: 0.7568627451, green: 0, blue: 0.1529411765, alpha: 1) // not explicitly set in design, educated guess
				dark	 = #colorLiteral(red: 1, green: 0.2784313725, blue: 0.4, alpha: 1)
				darkHC	 = #colorLiteral(red: 0.8784313725, green: 0.2156862745, blue: 0.3137254902, alpha: 1) // not explicitly set in design, educated guess
		}
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
