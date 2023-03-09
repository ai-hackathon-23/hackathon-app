import Foundation
import Moya

struct CreateCarePlanTargetType: ApiTargetType {
    typealias Response = CarePlan

    var path: String { "/care_plan" }

    var method: Moya.Method { .get }

    var sampleData: Data { Data() }
    let clientId: String

    var task: Task { .requestParameters(parameters: ["client_id": clientId], encoding: URLEncoding.queryString) }
}
