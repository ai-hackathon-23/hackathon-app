import SwiftUI

struct CarePlanListView: View {
    @ObservedObject var presenter: CarePlanListPresenter
    @EnvironmentObject var appState: AppState
    let clients: [ClientViewModel]
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("ケアプラン一覧").font(.title).foregroundColor(.black)) {
                    ForEach(0 ..< presenter.carePlans.count, id: \.self) { index in
                        NavigationLink(
                            destination: CarePlanView(carePlan: presenter.carePlans[index]),
                            label: { CarePlanListItem(model: presenter.carePlans[index]) }
                        )
                    }
                }
            }
        }.onAppear {
            presenter.didInit()
        }
    }
    
}
