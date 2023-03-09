import SwiftUI

struct ClientListView: View {
    @ObservedObject var presenter: ClientListPresenter
    @EnvironmentObject var appState: AppState
    let clients: [ClientViewModel] = []

    var body:  some View {
        return NavigationView {List {
            ForEach(0 ..< presenter.clients.count, id: \.self) { index in
                NavigationLink {
                    ClientView(client: presenter.clients[index])
                } label: {
                    ClientListItem(model: presenter.clients[index])
                }

            }
        }
        }.onAppear {
            presenter.didInit()
        }
    }
}

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
