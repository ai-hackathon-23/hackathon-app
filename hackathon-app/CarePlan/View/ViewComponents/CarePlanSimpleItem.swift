import SwiftUI

struct CarePlanSimpleItem: View {
    let info: CarePlanSimpleInfo
    var body: some View {
        HStack{
            Text(info.title)
            Spacer()
            Text(info.value)
        }
    }
}
