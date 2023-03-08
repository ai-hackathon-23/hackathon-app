import SwiftUI

struct ClientView : View {
    
    var body:  some View {
        return VStack {
            VStack {
                HStack {
                    Text("お名前：").font(.title)
                    Text("ここに名前が入ります")
                    Spacer()
                    
                }
                HStack {
                    Text("年齢：").font(.title)
                    Text("１０歳")
                    Spacer()
                }
                CarePlanListView()
            }
        }
    }
    
}

struct ClientView_PreviewProvider: PreviewProvider {
    static var previews: some View {
        return ClientView()}
}
