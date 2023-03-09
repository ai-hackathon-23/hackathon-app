import SwiftUI

struct CarePlanDescriptionItem: View {
    let title: String
    let value: String
    var body: some View {
        HStack {
            Text(title)           .font(.title)
                .frame(width: 200)
            Divider()// フレームの設定
            Text(value).font(.body)
        }
    }
}
