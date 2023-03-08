import Foundation

struct CarePlanViewModel: Hashable {
    let clientName: String
    let author: String
    let clientAge: String
    let updatedAt: String
    let simpleInfoData: [CarePlanSimpleViewModel]
    let descriptionInfoData: [CarePlanDescriptionViewModel]
}
