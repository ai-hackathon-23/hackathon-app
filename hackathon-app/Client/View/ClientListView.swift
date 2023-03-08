import SwiftUI

struct ClientListView: View {
    let clients: [ClientViewModel]
    var body:  some View {
        return NavigationView {List{
            ForEach(0 ..< clients.count) { index in
                NavigationLink {
                    ClientView(client: clients[index])
                } label: {
                    ClientListItem(model: clients[index])
                }

            }
        }}
    }
}

//struct ClientListView_PreviewProvider: PreviewProvider {
//    static var previews: some View {
//        return ClientListView(clients:[ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),])
//    }
//}
