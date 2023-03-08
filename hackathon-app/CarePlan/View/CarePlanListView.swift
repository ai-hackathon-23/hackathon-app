import SwiftUI

struct CarePlanListView : View {
    var body: some View {
        return  List{
                Section(header:
                    Text("ケアプラン一覧").font(.title).foregroundColor(.black)
                ){
                    CarePlanListItem()
                    CarePlanListItem()
                    CarePlanListItem()
                    CarePlanListItem()
                    CarePlanListItem()
                    CarePlanListItem()
                    CarePlanListItem()
                    CarePlanListItem()
                    CarePlanListItem()
                    CarePlanListItem()
                }
            }
    }
}
