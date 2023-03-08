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
                List{
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
    }
    
}

struct ClientView_PreviewProvider: PreviewProvider {
    static var previews: some View {
        return ClientView()}
}

struct CarePlanListItem: View{
    var body : some View {
        return HStack {
            Text("2022年2月20日確定")
            Text("山田さん")
            Text("田中萌子作成")
        }
    }
}
