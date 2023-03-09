//
//  hackathon_appApp.swift
//  hackathon-app
//
//  Created by 松山響也 on 2023/03/02.
//

import SwiftUI

@main
struct HackathonApp: App {
    init() {
        ApiClient.shared.request(GetCarePlansTargetType()) { result in
            print(result)
        }
    }
    @ObservedObject var appState = AppState()
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    CarePlanListView(presenter: CarePlanListPresenter(), clients: [])                .id(appState.rootViewId)
                }
                .tabItem {
                    VStack {
                        Image(systemName: "pencil")
                        Text("ケアプラン一覧")
                    }
                }
                
                ClientListView(presenter: ClientListPresenter())  .id(appState.rootViewId) // 実際には Text を使うのではなく、カスタムビューとなる
                    .tabItem {
                        VStack {
                            Image(systemName: "person")
                            Text("利用者一覧")
                        }
                    }
            }.environmentObject(appState)
        }
    }
}

final class  AppState: ObservableObject {
    @Published var rootViewId = UUID()
}

struct ContentView: View {
    @State var username: String = ""
    @State var isPrivate: Bool = true
    @State var notificationsEnabled: Bool = false
    @State private var previewIndex = 0
    var previewOptions = ["Always", "When Unlocked"]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("PROFILE")) {
                    TextField("Username", text: $username)
                    Toggle(isOn: $isPrivate) {
                        Text("Private Account")
                    }
                }
                
                Section(header: Text("NOTIFICATIONS")) {
                    Toggle(isOn: $notificationsEnabled) {
                        Text("Enabled")
                    }
                    Picker(selection: $previewIndex, label: Text("Show Previews")) {
                        ForEach(0 ..< previewOptions.count) {
                            Text(self.previewOptions[$0])
                        }
                    }
                }
                
                Section(header: Text("ABOUT")) {
                    HStack {
                        Text("Version")
                        Spacer()
                        Text("2.2.1")
                    }
                }
                
                Section {
                    Button(action: {
                        print("Perform an action here...")
                    }) {
                        Text("Reset All Settings")
                    }
                }
            }
            .navigationBarTitle("Settings")
        }
    }
}
