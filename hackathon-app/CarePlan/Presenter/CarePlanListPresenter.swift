import SwiftUI

class CarePlanListPresenter: ObservableObject {
    @Published var carePlans: [CarePlanViewModel] = []
    func didInit() {
        ApiClient.shared.request(GetCarePlansTargetType()) { [weak self] result in
            switch result {
            case .success(let model):
                self?.carePlans = model.map({ carePlan in
                    CarePlanViewModel(id: carePlan.id.description, clientName: carePlan.client.name, clientAge: String(carePlan.client.age), author: carePlan.author ?? "", facilityName: carePlan.facilityName ?? "", carePolicy: carePlan.carePolicy ?? "", specifiedService: carePlan.specifiedService ?? "", careCommitteeOpinion: carePlan.careCommitteeOpinion ?? "", resultAnalyze: carePlan.resultAnalyze!, updatedAt: carePlan.updatedAt)
                })
            case .failure(let failure):
                break
            }        
        }
    }
}
