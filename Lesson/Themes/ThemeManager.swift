import SwiftUI

class ThemeManager: ObservableObject {
    @AppStorage("selectedTheme") var selectedTheme: String = "light" {
        didSet {
            updateTheme()
        }
    }

    @Published var currentTheme: Theme = Themes.light

    func updateTheme() {
        switch selectedTheme {
        case "dark":
            currentTheme = Themes.dark
        case "blue":
            currentTheme = Themes.blue
        default:
            currentTheme = Themes.light
        }
    }
}

struct Theme {
    var backgroundColor: Color
    var textColor: Color
}

struct Themes {
    static let light = Theme(backgroundColor: .white, textColor: .black)
    static let dark = Theme(backgroundColor: .black, textColor: .white)
    static let blue = Theme(backgroundColor: Color.blue.opacity(0.1), textColor: .blue)
}
