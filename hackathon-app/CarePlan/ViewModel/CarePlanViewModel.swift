import Foundation

struct CarePlanViewModel: Hashable {
    let clientName: String
    let clientAge: String
    let author: String
    let facilityName: String
    let carePolicy: String
    let specifiedService: String
    let careCommitteeOpinion: String
    let resultAnalyze: String
    let updatedAt: String
}

enum CarePlanTitle: String {
    case clientName = "氏名"
    case clientAge = "年齢"
    case author = "記入者"
    case facilityName = "施設名"
    case carePolicy = "総合的な援助の方針"
    case specifiedService = "サービスの種類の指定"
    case careCommitteeOpinion = "介護認定審査会の意見"
    case resultAnalyze = "利用者及び家族の生活に対する意向を踏まえた課題分析の結果"
    case updatedAt = "更新日"
}
