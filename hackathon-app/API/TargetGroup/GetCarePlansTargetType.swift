import Foundation
import Moya

struct GetCarePlansTargetType: ApiTargetType {    
    typealias Response = [CarePlan]

    var path: String { "/care_plans" }

    var method: Moya.Method { .get }

    var sampleData: Data { Data() }

    var task: Task { .requestPlain }
}

struct CarePlan: Decodable {
    let id: Int
    let author: String?
    let facilityName: String?
    let resultAnalyze: String?
    let careCommitteeOpinion: String?
    let specifiedService: String?
    let carePolicy: String?
    let updatedAt: String
    let client: Client
    
    enum CodingKeys: String, CodingKey {
        case id
        case author
        case facilityName = "facility_name"
        case resultAnalyze = "result_analyze"
        case careCommitteeOpinion = "care_committee_opinion"
        case specifiedService = "specified_service"
        case carePolicy = "care_policy"
        case updatedAt = "updated_at"
        case client
    }
    
    struct Client: Decodable {
        let name: String
        let age: Int
        let familyLivingTogethers: String
        enum CodingKeys: String, CodingKey {
            case name
            case age
            case familyLivingTogethers = "family_living_togethers"
        }
    }
    
}
