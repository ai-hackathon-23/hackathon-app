import SwiftUI

struct CarePlanListItem: View{
    let model: CarePlanViewModel
    var body : some View {
        return HStack {
            Text(model.updatedAt + "編集")
            Text(model.clientName + "さん")
            Text(model.author + "作")
        }
    }
}
