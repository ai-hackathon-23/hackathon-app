import SwiftUI

struct ClientListView: View {
    @EnvironmentObject var appState: AppState
    let clients: [ClientViewModel]
    var body:  some View {
        return NavigationView {List{
            ForEach(0 ..< clients.count) { index in
                NavigationLink {
                    ClientView(client: clients[index])
                } label: {
                    ClientListItem(model: clients[index])
                }

            }
        }}
    }
}

//struct ClientListView_PreviewProvider: PreviewProvider {
//    static var previews: some View {
//        return ClientListView(clients:[ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),ClientViewModel(name: "山田太郎", age: "90"),])
//    }
//}

import UIKit
struct NavigationUtil {
    static func popToRootView() {
        findNavigationController(viewController: UIApplication.shared.windows.filter { $0.isKeyWindow }.first?.rootViewController)?
            .popToRootViewController(animated: true)
    }
static func findNavigationController(viewController: UIViewController?) -> UINavigationController? {
        guard let viewController = viewController else {
            return nil
        }
if let navigationController = viewController as? UINavigationController {
            return navigationController
        }
for childViewController in viewController.children {
            return findNavigationController(viewController: childViewController)
        }
return nil
    }
}
