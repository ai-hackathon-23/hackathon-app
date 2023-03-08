import SwiftUI

struct CarePlanDescriptionItem: View {
    let model: CarePlanDescriptionViewModel
    var body: some View {
        HStack{
            Text(model.title)           .font(.title)
                .frame(width: 200)
            Divider()// フレームの設定
            Text(model.description).font(.body)
        }
    }
}
