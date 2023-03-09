import SwiftUI

struct ClientView: View {
    
    let client: ClientViewModel
    @State private var showingAlert = false
    @EnvironmentObject var appState: AppState
    var body:  some View {
        return VStack {
            VStack {
                HStack {
                    Text("お名前：").font(.title)
                    Text(client.name)
                    Spacer()
                    
                }
                HStack {
                    Text("年齢：").font(.title)
                    Text("\(client.age)歳")
                    Spacer()
                }
                List {
                    Section(header: Text("ケアプラン一覧").font(.title).foregroundColor(.black)) {
                        ForEach(0 ..< client.carePlans.count) { index in
                            NavigationLink(
                                destination: CarePlanView(carePlan: client.carePlans[index]),
                                label: { CarePlanListItem(model: client.carePlans[index]) }
                            )
                        }
                    }
                    Button {
                        ApiClient.shared.request(CreateCarePlanTargetType(clientId: client.id)) { result in
                            appState.rootViewId = UUID()
                            showingAlert = true
                        }
                    } label: {
                        Text(client.name + "さんのケアプランを追加する")
                    }        .alert(isPresented: $showingAlert) {  // ③アラートの表示条件設定
                        Alert(title: Text("追加しました"))     // ④アラートの定義
                    }

                }
            }
        }
    }
    
}
