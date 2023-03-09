import SwiftUI

struct CarePlanListView: View {
    @EnvironmentObject var appState: AppState
    let careModelArray = [CarePlanViewModel(clientName: "山田太郎", author: "ケアマネ太朗", clientAge: "9", updatedAt: "2022年2月28日",
                                            simpleInfoData: [CarePlanSimpleViewModel(title: "氏名", value: "田中太朗"),
                                                             CarePlanSimpleViewModel(title: "生年月日", value: "2022年2月10日"),
                                                             CarePlanSimpleViewModel(title: "居住サービス計画作成者氏名", value: "ケアマネ太朗"),
                                                             CarePlanSimpleViewModel(title: "居住介護支援事業者", value: "居宅事業所XXX")
                                                            ],
                                            descriptionInfoData: [CarePlanDescriptionViewModel(title: "利用者及び家族の生活に対する意向を踏まえた課題分析の結果",
                                                                                               description: "本人は一人で安心して外出できるようになりたいと考えている。夫は以前一人で外出し浅井に、車止めにつまずき転倒したため、転倒がないように日頃のケアを大事にしたいと思っている"),
                                                                  CarePlanDescriptionViewModel(title: "介護認定審査会の意見及びサービスの種類の指定", description: "特になし。要介護状態が長期にわたって変化しないと考えられるため、認定有効期間を一年に延長する"),
                                                                  CarePlanDescriptionViewModel(title: "総合的な援助の方針",
                                                                                               description: "ご自宅でご主人と生活されています、ご主人が仕事をされているため、ご主人の負担を一番に考えられています、その中でご自身の体がなかなか動かなくなってきていることも自覚されており、転倒することがないように筋力低下を防ぎたいと思われています。支援方法①体調に合わせて子羽年を行い、役割が継続できるように支援します。支援方法②家事のできることを行えるように支援します。")] ),
                          CarePlanViewModel(clientName: "山田太郎", author: "ケアマネ太朗", clientAge: "9", updatedAt: "2022年2月28日", simpleInfoData: [CarePlanSimpleViewModel(title: "氏名", value: "田中太朗"),
                                                                                                                                            CarePlanSimpleViewModel(title: "生年月日", value: "2022年2月10日"),
                                                                                                                                            CarePlanSimpleViewModel(title: "居住サービス計画作成者氏名", value: "ケアマネ太朗"),
                                                                                                                                            CarePlanSimpleViewModel(title: "居住介護支援事業者", value: "居宅事業所XXX")
                                                                                                                                           ],
                                            descriptionInfoData: [CarePlanDescriptionViewModel(title: "利用者及び家族の生活に対する意向を踏まえた課題分析の結果",
                                                                                               description: "本人は一人で安心して外出できるようになりたいと考えている。夫は以前一人で外出し浅井に、車止めにつまずき転倒したため、転倒がないように日頃のケアを大事にしたいと思っている"),
                                                                  CarePlanDescriptionViewModel(title: "介護認定審査会の意見及びサービスの種類の指定", description: "特になし。要介護状態が長期にわたって変化しないと考えられるため、認定有効期間を一年に延長する"),
                                                                  CarePlanDescriptionViewModel(title: "総合的な援助の方針", description: "ご自宅でご主人と生活されています、ご主人が仕事をされているため、ご主人の負担を一番に考えられています、その中でご自身の体がなかなか動かなくなってきていることも自覚されており、転倒することがないように筋力低下を防ぎたいと思われています。支援方法①体調に合わせて子羽年を行い、役割が継続できるように支援します。支援方法②家事のできることを行えるように支援します。")] ),
                          CarePlanViewModel(clientName: "山田太郎", author: "ケアマネ太朗", clientAge: "9", updatedAt: "2022年2月28日", simpleInfoData: [CarePlanSimpleViewModel(title: "氏名", value: "田中太朗"),
                                                                                                                                            CarePlanSimpleViewModel(title: "生年月日", value: "2022年2月10日"),
                                                                                                                                            CarePlanSimpleViewModel(title: "居住サービス計画作成者氏名", value: "ケアマネ太朗"),
                                                                                                                                            CarePlanSimpleViewModel(title: "居住介護支援事業者", value: "居宅事業所XXX")
                                                                                                                                           ],
                                            descriptionInfoData: [CarePlanDescriptionViewModel(title: "利用者及び家族の生活に対する意向を踏まえた課題分析の結果",
                                                                                               description: "本人は一人で安心して外出できるようになりたいと考えている。夫は以前一人で外出し浅井に、車止めにつまずき転倒したため、転倒がないように日頃のケアを大事にしたいと思っている"),
                                                                  CarePlanDescriptionViewModel(title: "介護認定審査会の意見及びサービスの種類の指定", description: "特になし。要介護状態が長期にわたって変化しないと考えられるため、認定有効期間を一年に延長する"),
                                                                  CarePlanDescriptionViewModel(title: "総合的な援助の方針", description: "ご自宅でご主人と生活されています、ご主人が仕事をされているため、ご主人の負担を一番に考えられています、その中でご自身の体がなかなか動かなくなってきていることも自覚されており、転倒することがないように筋力低下を防ぎたいと思われています。支援方法①体調に合わせて子羽年を行い、役割が継続できるように支援します。支援方法②家事のできることを行えるように支援します。")] )]
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("ケアプラン一覧").font(.title).foregroundColor(.black)) {
                    ForEach(0 ..< careModelArray.count) { index in
                        NavigationLink(
                            destination: CarePlanView(carePlan: careModelArray[index]),
                            label: { CarePlanListItem(model: careModelArray[index]) }
                        )
                    }
                }
            }
        }
    }
    
}
