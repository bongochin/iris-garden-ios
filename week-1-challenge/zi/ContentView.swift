import SwiftUI

struct ContentView: View {
    @State private var isSidebarVisible: Bool = false

    var body: some View {
        ZStack {
            // Main content view
            Image("Inventory")
            
            // Sidebar
            if isSidebarVisible {
                SidebarView()
                    .frame(width: 250)
                    .transition(.move(edge: .leading))
                    .zIndex(1) // Ensure it appears above the main content
            }
            
            // Sidebar Toggle Button
            VStack {
                HStack {
                    Button(action: {
                        withAnimation {
                            isSidebarVisible.toggle()
                        }
                    }) {
                        Image(systemName: "line.horizontal.3")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding()
                            .foregroundColor(.purple)
                    }
                    Text("Home")
                        .foregroundColor(.purple)
                    
                    Spacer()
                    
                    Button(action: {
                        withAnimation {
                            isSidebarVisible.toggle()
                        }
                    }) {
                        Image(systemName: "gear")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding()
                            .foregroundColor(.purple)
                    }
                }
                
                HStack {
                    // Dresses and boxes go here
                    Image("Marcille")
                }
                
                HStack {
                    Button(action: {
                        print("Button tapped!")
                    }) {
                        HStack {
                            Image(systemName: "exclamationmark.circle.fill")
                                .foregroundColor(.red)
                            Text("Notifications")
                                .foregroundColor(.black)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .background(Color.white)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 7.5)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                        .padding(.horizontal)
                    }
                    Spacer()
                    Button(action: {
                        print("Button tapped!")
                    }) {
                        HStack {
                            Image(systemName: "star.fill")
                                .foregroundColor(.gray)
                            Text("a number")
                                .foregroundColor(.black)
                            Spacer()
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .background(Color.white)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 2)
                        )
                        .padding(.horizontal)
                    }
                }
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                HStack {
                    Image("image")
                    VStack {
                        Text("Low supply notification")
                            .foregroundColor(.red)
                        HStack {
                            Capsule()
                                .fill(Color.blue)
                                .frame(width: 40, height: 20)
                            Text("JSK, Navy")
                        }
                        HStack {
                            Text("Sizes")
                        }
                        .frame(maxWidth: .infinity)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 7.5)
                            .stroke(Color.gray, lineWidth: 1))
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 150)
                .background(Color.white)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 7.5)
                    .stroke(Color.gray, lineWidth: 1))
                .padding(.horizontal)
                HStack {
                    Image("image2")
                    VStack {
                        Text("Low supply notification")
                            .foregroundColor(.red)
                        HStack {
                            Capsule()
                                .fill(Color.green)
                                .frame(width: 40, height: 20)
                            Text("OP, Green")
                        }
                        HStack {
                            Text("Sizes")
                        }
                        .frame(maxWidth: .infinity)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 7.5)
                            .stroke(Color.gray, lineWidth: 1))
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 150)
                .background(Color.white)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 7.5)
                    .stroke(Color.gray, lineWidth: 1))
                .padding(.horizontal)
                HStack {
                    Image("image1")
                    VStack {
                        Text("Low supply notification")
                            .foregroundColor(.red)
                        HStack {
                            Capsule()
                                .fill(Color.black)
                                .frame(width: 40, height: 20)
                            Text("JSK, Navy")
                        }
                        HStack {
                            Text("Sizes")
                        }
                        .frame(maxWidth: .infinity)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 7.5)
                            .stroke(Color.gray, lineWidth: 1))
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 150)
                .background(Color.white)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 7.5)
                    .stroke(Color.gray, lineWidth: 1))
                .padding(.horizontal)
                Spacer()
                Spacer()
            }
        }
        .navigationBarHidden(true) // Hide the navigation bar
    }
}

struct SidebarView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack(alignment: .leading) {
            Text("Sidebar Item 1")
                .padding()
            Text("Sidebar Item 2")
                .padding()
            Text("Sidebar Item 3")
                .padding()
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("Log Out")
                    .foregroundColor(.red)
                    .padding()
            }
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.gray.opacity(0.8))
    }
}

#Preview {
    ContentView()
}
