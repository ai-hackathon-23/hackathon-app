//
//  hackathon_appApp.swift
//  hackathon-app
//
//  Created by 松山響也 on 2023/03/02.
//

import SwiftUI

@main
struct HackathonApp: App {
    var body: some Scene {
        WindowGroup {
                    TabView {
Text("Tab 1")
                            .tabItem {
                                VStack {
                                    Image(systemName: "pencil")
                                    Text("ケアプラン一覧")
                                }
                            }
                        ClientListView(clients:[ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),])// 実際には Text を使うのではなく、カスタムビューとなる
                            .tabItem {
                                VStack {
                                    Image(systemName: "person")
                                    Text("利用者一覧")
                                }
                            }
            }
        }
    }
}
