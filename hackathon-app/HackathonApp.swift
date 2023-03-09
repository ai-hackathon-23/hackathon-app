//
//  hackathon_appApp.swift
//  hackathon-app
//
//  Created by 松山響也 on 2023/03/02.
//

import SwiftUI

@main
struct HackathonApp: App {
    @ObservedObject var appState = AppState()
    var body: some Scene {
        WindowGroup {
                    TabView {
                        NavigationView {
                            CarePlanListView()                .id(appState.rootViewId)
                        }
                            .tabItem {
                                VStack {
                                    Image(systemName: "pencil")
                                    Text("ケアプラン一覧")
                                }
                            }
                            
                        ClientListView(clients: [testModel, testModel, testModel, testModel])  .id(appState.rootViewId) // 実際には Text を使うのではなく、カスタムビューとなる
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
let testModel = ClientViewModel(name: "山田太郎", age: "90", carePlans: [CarePlanViewModel(clientName: "山田太郎", author: "ケアプラン作成タロウ", clientAge: "8", updatedAt: "2022年2月28日",
 simpleInfoData: [CarePlanSimpleViewModel(title: "氏名", value: "田中太朗"),
                    CarePlanSimpleViewModel(title: "生年月日", value: "2022年2月10日"),
                                                                                                                                                                                   CarePlanSimpleViewModel(title: "居住サービス計画作成者氏名", value: "ケアマネ太朗"),
                                                                                                                                                                                   CarePlanSimpleViewModel(title: "居住介護支援事業者", value: "居宅事業所XXX")
                                                                                                                                                                                  ],
                                                                                                                                                                  descriptionInfoData: [CarePlanDescriptionViewModel(title: "利用者及び家族の生活に対する意向を踏まえた課題分析の結果",
                                                                                                                                                                                                                description: "本人は一人で安心して外出できるようになりたいと考えている。夫は以前一人で外出し浅井に、車止めにつまずき転倒したため、転倒がないように日頃のケアを大事にしたいと思っている"),
                                                                                                                                                                                        CarePlanDescriptionViewModel(title: "介護認定審査会の意見及びサービスの種類の指定", description: "特になし。要介護状態が長期にわたって変化しないと考えられるため、認定有効期間を一年に延長する"),
                                                                                                                                                                                        CarePlanDescriptionViewModel(title: "総合的な援助の方針", description: "ご自宅でご主人と生活されています、ご主人が仕事をされているため、ご主人の負担を一番に考えられています、その中でご自身の体がなかなか動かなくなってきていることも自覚されており、転倒することがないように筋力低下を防ぎたいと思われています。支援方法①体調に合わせて子羽年を行い、役割が継続できるように支援します。支援方法②家事のできることを行えるように支援します。")] ), CarePlanViewModel(clientName: "山田太郎", author: "ケアプラン作成タロウ", clientAge: "8", updatedAt: "2022年2月28日", simpleInfoData: [CarePlanSimpleViewModel(title: "氏名", value: "田中太朗"),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    CarePlanSimpleViewModel(title: "生年月日", value: "2022年2月10日"),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              CarePlanSimpleViewModel(title: "居住サービス計画作成者氏名", value: "ケアマネ太朗"),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              CarePlanSimpleViewModel(title: "居住介護支援事業者", value: "居宅事業所XXX")
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ],
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             descriptionInfoData: [CarePlanDescriptionViewModel(title: "利用者及び家族の生活に対する意向を踏まえた課題分析の結果",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           description: "本人は一人で安心して外出できるようになりたいと考えている。夫は以前一人で外出し浅井に、車止めにつまずき転倒したため、転倒がないように日頃のケアを大事にしたいと思っている"),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   CarePlanDescriptionViewModel(title: "介護認定審査会の意見及びサービスの種類の指定", description: "特になし。要介護状態が長期にわたって変化しないと考えられるため、認定有効期間を一年に延長する"),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   CarePlanDescriptionViewModel(title: "総合的な援助の方針", description: "ご自宅でご主人と生活されています、ご主人が仕事をされているため、ご主人の負担を一番に考えられています、その中でご自身の体がなかなか動かなくなってきていることも自覚されており、転倒することがないように筋力低下を防ぎたいと思われています。支援方法①体調に合わせて子羽年を行い、役割が継続できるように支援します。支援方法②家事のできることを行えるように支援します。")] ), CarePlanViewModel(clientName: "山田太郎", author: "ケアプラン作成タロウ", clientAge: "8", updatedAt: "2022年2月28日", simpleInfoData: [CarePlanSimpleViewModel(title: "氏名", value: "田中太朗"),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               CarePlanSimpleViewModel(title: "生年月日", value: "2022年2月10日"),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         CarePlanSimpleViewModel(title: "居住サービス計画作成者氏名", value: "ケアマネ太朗"),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         CarePlanSimpleViewModel(title: "居住介護支援事業者", value: "居宅事業所XXX")
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ],
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        descriptionInfoData: [CarePlanDescriptionViewModel(title: "利用者及び家族の生活に対する意向を踏まえた課題分析の結果",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      description: "本人は一人で安心して外出できるようになりたいと考えている。夫は以前一人で外出し浅井に、車止めにつまずき転倒したため、転倒がないように日頃のケアを大事にしたいと思っている"),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              CarePlanDescriptionViewModel(title: "介護認定審査会の意見及びサービスの種類の指定", description: "特になし。要介護状態が長期にわたって変化しないと考えられるため、認定有効期間を一年に延長する"),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              CarePlanDescriptionViewModel(title: "総合的な援助の方針", description: "ご自宅でご主人と生活されています、ご主人が仕事をされているため、ご主人の負担を一番に考えられています、その中でご自身の体がなかなか動かなくなってきていることも自覚されており、転倒することがないように筋力低下を防ぎたいと思われています。支援方法①体調に合わせて子羽年を行い、役割が継続できるように支援します。支援方法②家事のできることを行えるように支援します。")] )])

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
