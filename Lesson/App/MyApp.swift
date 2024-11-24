import SwiftUI

@main
struct MyApp: App {
    @StateObject var themeManager = ThemeManager()

    var body: some Scene {
        WindowGroup {
            SettingsView()
                .environmentObject(themeManager) // Это важно, чтобы настройки темы работали во всем приложении
        }
    }
}
