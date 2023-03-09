//
//  ContentView.swift
//  hackathon-app
//
//  Created by 松山響也 on 2023/03/02.
//

import SwiftUI

struct CarePlanView: View {
    let carePlan: CarePlanViewModel
    var body: some View {
        List {
            CarePlanSimpleItem(title: CarePlanTitle.clientName.rawValue, value: carePlan.clientName)
            CarePlanSimpleItem(title: CarePlanTitle.clientAge.rawValue, value: carePlan.clientAge)
            CarePlanSimpleItem(title: CarePlanTitle.author.rawValue, value: carePlan.author)
            CarePlanSimpleItem(title: CarePlanTitle.facilityName.rawValue, value: carePlan.facilityName)
            CarePlanDescriptionItem(title: CarePlanTitle.resultAnalyze.rawValue, value: carePlan.resultAnalyze)
            CarePlanDescriptionItem(title: CarePlanTitle.careCommitteeOpinion.rawValue, value: carePlan.careCommitteeOpinion)
            CarePlanDescriptionItem(title: CarePlanTitle.specifiedService.rawValue, value: carePlan.specifiedService)
            CarePlanDescriptionItem(title: CarePlanTitle.carePolicy.rawValue, value: carePlan.carePolicy)
            NavigationLink("編集する", destination: EditCarePlanView(name: "hogehoge"))
        }
    }
}

struct CarePlanView_Previews: PreviewProvider {
    
    static var previews: some View {
        CarePlanView(carePlan: CarePlanViewModel(clientName: "山田太郎",
                                                  clientAge: "9",
                                                  author: "ケアマネ太朗",
                                                  facilityName: "2022年2月28日",
                                                  carePolicy: "施設名が入ります",
                                                  specifiedService: "ご自宅でご主人と生活されています、ご主人が仕事をされているため、ご主人の負担を一番に考えられています、その中でご自身の体がなかなか動かなくなってきていることも自覚されており、転倒することがないように筋力低下を防ぎたいと思われています。支援方法①体調に合わせて子羽年を行い、役割が継続できるように支援します。支援方法②家事のできることを行えるように支援します 。",
                                                  careCommitteeOpinion: "特になし。要介護状態が長期にわたって変化しないと考えられるため、認定有効期間を一年に延長する",
                                                  resultAnalyze: "本人は一人で安心して外出できるようになりたいと考えている。夫は以前一人で外出し浅井に、車止めにつまずき転倒したため、転倒がないように日頃のケアを大事にしたいと思っている",
                                                  updatedAt: "特になし"))
    }
}
