import SwiftUI

struct OnboardingContentView: View {
    let pages = [
        OnboardingData(image: "img1", title: "Welcome", description: "Discover the app's features."),
        OnboardingData(image: "img2", title: "Features", description: "Explore our amazing features."),
        OnboardingData(image: "img3", title: "Get Started", description: "Let's start your journey.")
    ]

    @State private var currentPage = 0

    var body: some View {
        VStack {
            TabView(selection: $currentPage) {
                ForEach(pages) { page in
                    OnboardingView(data: page).tag(page.id)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))

            HStack {
                if currentPage > 0 {
                    Button("Back") { currentPage -= 1 }
                }
                Spacer()
                if currentPage < pages.count - 1 {
                    Button("Next") { currentPage += 1 }
                }
            }
            .padding()
        }
    }
}
