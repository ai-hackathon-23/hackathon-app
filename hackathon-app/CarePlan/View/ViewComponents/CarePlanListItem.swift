import SwiftUI

struct CarePlanListItem: View {
    let model: CarePlanViewModel
    var body : some View {
        return VStack {
            Text(model.updatedAt + "編集")
                Text(model.clientName + "さん")
                Text("記述者名：" + model.author )
        }
    }
}
struct CarePlanListItemPreviewProvider: PreviewProvider {
    static var previews: some View {
        CarePlanListItem(model: CarePlanViewModel(id: "", clientName: "田中角栄", clientAge: "90", author: "田中陽子", facilityName: "", carePolicy: "", specifiedService: "", careCommitteeOpinion: "", resultAnalyze: "", updatedAt: "2022-02-28")).previewLayout(.fixed(width: 160, height: 50))
    }
}
