import SwiftUI

struct ClientView: View, Hashable {
    let client: ClientViewModel
    var body:  some View {
        return VStack {
            VStack {
                HStack {
                    Text("お名前：").font(.title)
                    Text("ここに名前が入ります")
                    Spacer()
                    
                }
                HStack {
                    Text("年齢：").font(.title)
                    Text("１０歳")
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
                }
            }
        }
    }
    
}
