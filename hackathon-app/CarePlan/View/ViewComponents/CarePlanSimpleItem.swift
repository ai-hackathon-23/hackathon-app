import SwiftUI

struct CarePlanSimpleItem: View {
    let model: CarePlanSimpleViewModel
    var body: some View {
        HStack{
            Text(model.title)
            Spacer()
            Text(model.value)
        }
    }
}
