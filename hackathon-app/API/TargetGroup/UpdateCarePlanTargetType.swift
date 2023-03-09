import Foundation
import Moya

struct UpdateCarePlanTargetType: ApiTargetType {
    typealias Response = CarePlan

    var path: String { "/care_plan" }

    var method: Moya.Method { .patch }

    var sampleData: Data { Data() }
    let id: String
    let author: String
    let resultAnalyze: String
    let careCommitteeOpinion: String
    let specifiedService: String
    let carePolicy: String

    var task: Task { .requestParameters(parameters: ["id": id, "author": author, "result_analyze": resultAnalyze, "care_committee_opinion": careCommitteeOpinion, "specified_service": specifiedService, "care_policy": carePolicy], encoding: URLEncoding.queryString) }
}
