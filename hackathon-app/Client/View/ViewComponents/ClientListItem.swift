import SwiftUI

struct ClientListItem: View, Hashable {
    let model: ClientViewModel
    var body: some View {
        HStack {
            Text(model.name)           .font(.title)
            Spacer()
            Text(model.age + "歳").font(.body)
        }.frame(height: 80)
    }
}

// struct ClientListItem_PreviewProvider: PreviewProvider {
//    static var previews: some View {
//        return VStack{ClientListItem(model:ClientViewModel(name: "山田太郎", age: "90"))}.previewLayout(.fixed(width: 300, height: 80))
//    }
// }
