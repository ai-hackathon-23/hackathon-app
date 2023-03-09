import SwiftUI

class CarePlanListPresenter: ObservableObject {
    @Published var carePlans: [CarePlanViewModel] = []
    func didInit() {
        ApiClient.shared.request(GetCarePlansTargetType()) { [weak self] result in
            switch result {
            case .success(let model):
                self?.carePlans = model.map({ carePlan in
                    CarePlanViewModel( clientName: carePlan.author, clientAge: String(carePlan.client.age), author: carePlan.resultAnalyze, facilityName: carePlan.facilityName, carePolicy: carePlan.specifiedService, specifiedService: carePlan.carePolicy, careCommitteeOpinion: carePlan.careCommitteeOpinion, resultAnalyze: carePlan.resultAnalyze, updatedAt: carePlan.updatedAt)
                })
            case .failure(let failure):
                break
            }        
        }
    }
}
