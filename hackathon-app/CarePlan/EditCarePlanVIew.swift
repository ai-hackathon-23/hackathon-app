import SwiftUI

struct EditCarePlanView: View {
    @EnvironmentObject var appState: AppState
    @State private var showingAlert = false
    @State var author: String
    @State var resultAnalyze: String
    @State var careCommitteeOpinion: String
    @State var  specifiedService: String
    @State var  carePolicy: String
    let id: String
    init(author: String, resultAnalyze: String, careCommitteeOpinion: String, specifiedService: String, carePolicy: String, id: String) {
        self.author = author
        self.resultAnalyze = resultAnalyze
        self.careCommitteeOpinion = careCommitteeOpinion
        self.specifiedService = specifiedService
        self.carePolicy = carePolicy
        self.id = id
    }
    var body: some View {
        VStack(alignment: .center) {
            Text("作者名").padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
            TextField("", text: $author)
                .textFieldStyle(PlainTextFieldStyle())
                .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
                .overlay(
                    RoundedRectangle(cornerRadius: 5.0)
                        .stroke(Color.gray, lineWidth: 1.0))
            CustomTextEditor(value: $resultAnalyze, title: "利用者及び家族の生活に対する意向を踏まえた課題分析の結果")
            CustomTextEditor(value: $careCommitteeOpinion, title: "介護認定審査会の意見")
            CustomTextEditor(value: $specifiedService, title: "サービスの種類の指定")
            CustomTextEditor(value: $carePolicy, title: "総合的な援助の方針")
            
            Button("編集を完了する", action: {
                showingAlert = true
                ApiClient.shared.request(UpdateCarePlanTargetType(id: id, author: author, resultAnalyze: $resultAnalyze.wrappedValue, careCommitteeOpinion: careCommitteeOpinion, specifiedService: specifiedService, carePolicy: carePolicy)) { result in
                    DispatchQueue.main.async {
                        appState.rootViewId = UUID()
                    }
                }

            })
        }
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
