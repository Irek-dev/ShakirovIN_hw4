import SwiftUI

struct ProfileView: View {
    @State private var user = UserProfile(firstName: "John", lastName: "Doe", email: "john.doe@example.com", avatar: nil)

    var body: some View {
        VStack {
            if let avatar = user.avatar {
                Image(uiImage: avatar)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
            } else {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
            }
            Text("\(user.firstName) \(user.lastName)")
                .font(.largeTitle)
                .padding(.top)
            Text(user.email)
                .font(.subheadline)
                .padding(.bottom)
        }
        .padding()
        .navigationTitle("Profile")
    }
}
