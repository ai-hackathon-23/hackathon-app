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
                        // --- ここから ---
                        // タブ内に表示するビュー
                        CarePlanView(client: Client(name: "山田太郎", birthDate: Calendar.current.date(byAdding: .year, value: -78, to: Date())!,simpleInfoData: [CarePlanSimpleInfo(title: "氏名", value: "田中太朗"),
                                                                                                                                                    CarePlanSimpleInfo(title: "生年月日", value: "2022年2月10日"),
                                                                                                                                                              CarePlanSimpleInfo(title: "居住サービス計画作成者氏名", value: "ケアマネ太朗"),
                                                                                                                                                              CarePlanSimpleInfo(title: "居住介護支援事業者", value: "居宅事業所XXX")
                                                                                                                                                             ],
                                                                                                                                             descriptionInfoData: [CarePlanDescriptionInfo(title: "利用者及び家族の生活に対する意向を踏まえた課題分析の結果",
                                                                                                                                                                                           description: "本人は一人で安心して外出できるようになりたいと考えている。夫は以前一人で外出し浅井に、車止めにつまずき転倒したため、転倒がないように日頃のケアを大事にしたいと思っている"),
                                                                                                                                                                   CarePlanDescriptionInfo(title: "介護認定審査会の意見及びサービスの種類の指定", description: "特になし。要介護状態が長期にわたって変化しないと考えられるため、認定有効期間を一年に延長する"),
                                                                                                                                                                   CarePlanDescriptionInfo(title: "総合的な援助の方針",description: "ご自宅でご主人と生活されています、ご主人が仕事をされているため、ご主人の負担を一番に考えられています、その中でご自身の体がなかなか動かなくなってきていることも自覚されており、転倒することがないように筋力低下を防ぎたいと思われています。支援方法①体調に合わせて子羽年を行い、役割が継続できるように支援します。支援方法②家事のできることを行えるように支援します。")] ))
                            .tabItem {
                                VStack {
                                    Image(systemName: "pencil")
                                    Text("ケアプラン一覧")
                                }
                            }
                        Text("Tab 2") // 実際には Text を使うのではなく、カスタムビューとなる
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
