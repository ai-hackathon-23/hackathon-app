import SwiftUI

struct CarePlanSimpleItem: View {
    let title: String
    let value: String
    var body: some View {
        HStack {
            Text(title)
            Spacer()
            Text(value)
        }
    }
}
