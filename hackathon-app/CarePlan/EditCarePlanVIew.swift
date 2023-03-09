import SwiftUI

struct EditCarePlanView: View {
    @EnvironmentObject var appState: AppState
    @State var name: String
    var body: some View {
        VStack(alignment: .leading) {
                Text("作者名").padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                TextField("", text: $name)
                    .textFieldStyle(PlainTextFieldStyle())
                    .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
                    .overlay(
                        RoundedRectangle(cornerRadius: 5.0)
                            .stroke(Color.gray, lineWidth: 1.0))
                CustomTextEditor(value: $name, title: "利用者及び家族の生活に対する意向を踏まえた課題分析の結果")
                CustomTextEditor(value: $name, title: "介護認定審査会の意見")
                CustomTextEditor(value: $name, title: "サービスの種類の指定")
                CustomTextEditor(value: $name, title: "総合的な援助の方針")

            Button("Pop to root", action: {
                            appState.rootViewId = UUID()
                        })
            
        }.padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
    }
}

private struct CustomTextEditor: View {
    @Binding var value: String
    let title: String
    
    var body: some View {
        Text(title).padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
        TextEditor(text: $value)
            .overlay(
                RoundedRectangle(cornerRadius: 5.0)
                    .stroke(Color.gray, lineWidth: 1.0))
    }
}

struct EditCarePlanViewPreviewProvider: PreviewProvider {
    static var previews: some View {
        EditCarePlanView(name: "")
    }
}
