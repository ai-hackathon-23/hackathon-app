import Foundation
import Moya

struct GetClientListTargetType: ApiTargetType {
    typealias Response = [Client]

    var path: String { "/clients" }

    var method: Moya.Method { .get }

    var sampleData: Data { Data() }

    var task: Task { .requestPlain }
}

struct Client: Codable {
    let id: Int
    let name: String
    let age: Int
    let familyLivingTogethers: String
    let carePlans: [CarePlan]

    enum CodingKeys: String, CodingKey {
        case id, name, age
        case familyLivingTogethers = "family_living_togethers"
        case carePlans = "care_plans"
    }
    
    struct CarePlan: Codable {
        let id: Int
        let author: String?
        let facilityName: String?
        let resultAnalyze: String?
        let careCommitteeOpinion: String?
        let specifiedService: String?
        let carePolicy: String?
        let updatedAt: String
        let clientId: String

        enum CodingKeys: String, CodingKey {
            case id, author
            case facilityName = "facility_name"
            case resultAnalyze = "result_analyze"
            case careCommitteeOpinion = "care_committee_opinion"
            case specifiedService = "specified_service"
            case carePolicy = "care_policy"
            case updatedAt = "updated_at"
            case clientId = "client_id"
        }
    }
}
