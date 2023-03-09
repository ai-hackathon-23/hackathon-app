import SwiftUI

class ClientListPresenter: ObservableObject {
    @Published var clients: [ClientViewModel] = []
    
    func didInit() {
        ApiClient.shared.request(GetClientListTargetType()) { [weak self] result in
            switch result {
            case .success(let model):
                self?.clients = model.map({ client in
                    let carePlans = client.carePlans.map { carePlan in
                        CarePlanViewModel(id: carePlan.id.description, clientName: client.name, clientAge: String(client.age), author: carePlan.author ?? "", facilityName: carePlan.facilityName ?? "", carePolicy: carePlan.carePolicy ?? "", specifiedService: carePlan.specifiedService ?? "", careCommitteeOpinion: carePlan.careCommitteeOpinion ?? "", resultAnalyze: carePlan.resultAnalyze ?? "", updatedAt: carePlan.updatedAt)
                    }
                    return ClientViewModel(id: client.id.description, name: client.name, age: String(client.age), carePlans: carePlans)
                })
            case .failure(let failure):
                break
            }
        }
    }
}
