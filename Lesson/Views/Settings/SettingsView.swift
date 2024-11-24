import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var themeManager: ThemeManager
    @State private var showFeedback = false
    @State private var showAbout = false
    
    let themes = ["light", "dark", "blue"]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Themes")) {
                    ForEach(themes, id: \.self) { theme in
                        HStack {
                            Text(theme.capitalized)
                            Spacer()
                            if themeManager.selectedTheme == theme {
                                Image(systemName: "checkmark")
                                    .foregroundColor(.blue)
                            }
                        }
                        .onTapGesture {
                            themeManager.selectedTheme = theme
                        }
                    }
                }

                Section(header: Text("App Information")) {
                    Button("Feedback") { showFeedback.toggle() }
                        .sheet(isPresented: $showFeedback) { FeedbackView() }

                    Button("About") { showAbout.toggle() }
                        .sheet(isPresented: $showAbout) { AboutView() }
                }
            }
            .navigationTitle("Settings")
        }
    }
}
