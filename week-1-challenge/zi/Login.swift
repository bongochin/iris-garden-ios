import SwiftUI

struct MainView: View {
    @State private var isContentViewActive: Bool = false
    @State private var selectedUser: String? = nil
    
    let users = ["User 1", "User 2", "User 3", "User 4"]

    var body: some View {
        NavigationStack {
            VStack {
                Text("Select a User to Log In")
                    .font(.headline)
                    .padding()

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(users, id: \.self) { user in
                            Button(action: {
                                selectedUser = user
                                isContentViewActive = true
                            }) {
                                Text(user)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.blue)
                                    .cornerRadius(10)
                            }
                        }
                    }
                    .padding()
                }

                NavigationLink(destination: ContentView(), isActive: $isContentViewActive) {
                    EmptyView()
                }
                
                Spacer()
            }
            .navigationTitle("Log In")
            .navigationBarHidden(true) // Completely hide the navigation bar
        }
    }
}

#Preview {
    MainView()
}
