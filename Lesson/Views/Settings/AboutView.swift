import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Text("About This App")
                .font(.title)
                .padding()

            Text("This is a sample app built using SwiftUI to demonstrate its features.")
                .padding()

            Spacer()
        }
        .navigationBarTitle("About", displayMode: .inline)
    }
}
