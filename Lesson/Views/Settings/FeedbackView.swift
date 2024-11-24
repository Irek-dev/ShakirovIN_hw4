import SwiftUI

struct FeedbackView: View {
    var body: some View {
        VStack {
            Text("We value your feedback!")
                .font(.title)
                .padding()

            Text("Please share your thoughts and suggestions to help us improve.")
                .padding()

            Spacer()
        }
        .navigationBarTitle("Feedback", displayMode: .inline)
    }
}
