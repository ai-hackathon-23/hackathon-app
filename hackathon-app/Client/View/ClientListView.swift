import SwiftUI

struct ClientListView: View {
    let clients: [ClientViewModel]
    var body:  some View {
        return List{
            ForEach(clients, id: \.self) { model in
               ClientListItem(model: model)
            }
        }
    }
}

struct ClientListView_PreviewProvider: PreviewProvider {
    static var previews: some View {
        return ClientListView(clients:[ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),])
    }
}
