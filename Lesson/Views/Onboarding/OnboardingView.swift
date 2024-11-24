import SwiftUI

struct OnboardingView: View {
    var data: OnboardingData

    var body: some View {
        VStack {
            Image(data.image)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            Text(data.title)
                .font(.largeTitle)
                .padding(.top)
            Text(data.description)
                .font(.body)
                .padding(.top, 5)
        }
        .padding()
    }
}
