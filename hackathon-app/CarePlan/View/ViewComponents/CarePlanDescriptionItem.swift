import SwiftUI

struct CarePlanDescriptionInfoItem: View {
    let info: CarePlanDescriptionInfo
    var body: some View {
        HStack{
            Text(info.title)           .font(.title)
                .frame(width: 200)
            Divider()// フレームの設定
            Text(info.description).font(.body)
        }
    }
}
