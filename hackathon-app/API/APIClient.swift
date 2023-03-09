import Foundation
import Moya
import UIKit

///　デフォルト実装を用意し、レスポンスの型を定義できるようにしたTargetType
protocol ApiTargetType: TargetType {
    associatedtype Response: Decodable
}

extension ApiTargetType {
    // swiftlint:disable:next force_unwrapping
    var baseURL: URL { URL(string: "http://localhost:8080")! }
    var headers: [String: String]? {
        nil
    }
}

protocol ApiClientInterface {
    func request<T: ApiTargetType>(_ request: T, callbackQueue: DispatchQueue, completion: @escaping (Result<T.Response, Error>) -> Void)
}

class ApiClient: ApiClientInterface {
    private init() {}

    static let shared = ApiClient()

    func request<T>(_ request: T, callbackQueue: DispatchQueue = .main, completion: @escaping (Result<T.Response, Error>) -> Void) where T: ApiTargetType {
        let provider = MoyaProvider<T>()
        provider.request(request, callbackQueue: callbackQueue) { result in
            let dateFormatter: DateFormatter = {
                let formatter = DateFormatter()
                formatter.dateFormat = "yyyy年MM月dd日"
                formatter.locale = Locale(identifier: "en_US_POSIX")
                return formatter
            }()
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .formatted(dateFormatter)
            switch result {
            case let .success(response):
                do {
                    let model = try decoder.decode(T.Response.self, from: response.data)
                    completion(.success(model))
                } catch {
                    completion(.failure(error))
                }

            case let .failure(error):
                completion(.failure(error))
            }
        }
    }
}
