import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("历史记录")
                .tabItem {
                    Label("历史", systemImage: "clock")
                }
                .tag(0)
            
            Text("设置")
                .tabItem {
                    Label("设置", systemImage: "gear")
                }
                .tag(1)
        }
        .padding()
        .frame(minWidth: 800, minHeight: 600)
    }
}

#Preview {
    ContentView()
} 